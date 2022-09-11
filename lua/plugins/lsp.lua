local module = {}

function module.init(use)
  use {
    'williamboman/mason.nvim',
    requires = {
      "williamboman/mason-lspconfig.nvim",
      "neovim/nvim-lspconfig",
      "glepnir/lspsaga.nvim",
      "jose-elias-alvarez/nvim-lsp-ts-utils",
      {
        'jose-elias-alvarez/null-ls.nvim',
        requires = {
          { 'nvim-lua/plenary.nvim' },
        },
      },
      { "WhoIsSethDaniel/mason-tool-installer.nvim" },
      { "jayp0521/mason-null-ls.nvim" }
    },
    config = function()
      local keymap = vim.keymap.set
      local servers = {
        -- lsp servers
        "lua-language-server",
        "rust-analyzer",
        "bash-language-server",
        "css-lsp",
        "dockerfile-language-server",
        "graphql-language-service-cli",
        "json-lsp",
        "typescript-language-server",
        "eslint-lsp",
        "remark-language-server",
        "intelephense",
        "solargraph",
        -- "sqls",
        "yaml-language-server",
        -- "shfmt",
        "rubocop",
        "luaformatter",
        "sql-formatter",
      }

      -- local formatters = {
      --   -- null-ls linters
      --   "php-cs-fixer"
      -- }

      local null_ls = require('null-ls')

      require("mason").setup()

      -- configure LSP servers
      local enhance_server_opts = {
        ['sumneko_lua'] = function(options)
          options.settings = {
            format = { enable = true }, -- this will enable formatting
            Lua = { diagnostics = { globals = { 'vim' } } }
          }

          -- prefer lsp formatting
          options.on_attach = function(client, bufnr)
            client.server_capabilities.documentFormattingProvider = true
            client.server_capabilities
                .documentRangeFormattingProvider = true
          end
        end,

        ['tsserver'] = function(options)
          options.on_attach = function(client, bufnr)
            local ts_utils = require("nvim-lsp-ts-utils")
            ts_utils.setup({})
            ts_utils.setup_client(client)

            -- no default maps, so you may want to define some here
            local opts = { silent = true }
            vim.api.nvim_buf_set_keymap(bufnr, "n", "gs",
              ":TSLspOrganize<CR>", opts)
            -- vim.api.nvim_buf_set_keymap(bufnr, "n", "gr", ":TSLspRenameFile<CR>", opts)
            vim.api.nvim_buf_set_keymap(bufnr, "n", "gi",
              ":TSLspImportAll<CR>", opts)
          end
        end,

        ['eslint'] = function(options)
          options.settings = {
            format = { enable = true } -- this will enable formatting
          }

          options.filetypes = {
            'javascript', 'javascriptreact', 'javascript.jsx',
            'typescript', 'typescriptreact', 'typescript.tsx', 'vue'
          }

          options.on_attach = function(client, bufnr)
            client.server_capabilities.documentFormattingProvider = true
            client.server_capabilities
                .documentRangeFormattingProvider = true
          end
        end
      }

      mason_lspconfig = require("mason-lspconfig")

      mason_lspconfig.setup({
        ensure_installed = servers,
        automatic_installation = true
      })

      function global_on_attach(client, bufnr)
        client.server_capabilities.documentFormattingProvider = false
        client.server_capabilities.documentRangeFormattingProvider = false
        -- navic.attach(client, bufnr)
      end

      mason_lspconfig.setup_handlers({
        function(server_name)
          local options = {}

          if enhance_server_opts[server_name] then
            enhance_server_opts[server_name](options)
          end

          local server_on_attach = options.on_attach

          require("lspconfig")[server_name].setup({
            on_attach = function(client, bufnr)
              global_on_attach(client, bufnr)

              if server_on_attach then
                server_on_attach(client, bufnr)
              end
            end
          })
        end
      })

      -- auto update LSP servers
      require('mason-tool-installer').setup({
        ensure_installed = servers,
        auto_update = true
      })

      -- install null-ls syntax checker deps
      require("mason-null-ls").setup({
        automatic_installation = true,
        ensure_installed = servers,
        -- null_ls_sources = formatters,
        auto_update = true
      })
      require("mason-null-ls").check_install(true)

      -- linter / formatter
      null_ls.setup()

      -- configure individual LSP servers

      -- LPS tools
      require("lspsaga").init_lsp_saga({
        definition_action_keys = {
          edit = '<cr>',
          vsplit = '<C-c>v',
          split = '<C-c>i',
          tabe = '<C-c>t',
          quit = 'q',
        },
        finder_action_keys = {
          open = "<cr>"
        },
        symbol_in_winbar = {
          enable = false,
        },
      })

      -- default keymap options
      local o = { silent = true }

      -- format keymaps
      keymap('n', '<leader>f', '<cmd>lua vim.lsp.buf.format()<cr>', o)

      -- lsp keymaps
      keymap("n", "gh", "<cmd>Lspsaga lsp_finder<CR>", o)
      keymap("n", "K", "<cmd>Lspsaga hover_doc<CR>", o)
      keymap({"n", "v"}, "ga", "<cmd>Lspsaga code_action<CR>", o)
      keymap("n", "go", "<cmd>LSoutlineToggle<CR>", o)
      keymap("n", "gr", "<cmd>Lspsaga rename<CR>", o)
      keymap("n", "gd", "<cmd>Lspsaga peek_definition<CR>", o)
      keymap("n", "gD", vim.lsp.buf.type_definition, o)
      keymap("n", "gi", vim.lsp.buf.implementation, o)
      keymap("n", "gx", "<cmd>Lspsaga show_cursor_diagnostics<CR>", o)
      keymap("n", "gX", "<cmd>Lspsaga show_line_diagnostics<CR>", o)
      keymap("n", "[e", "<cmd>Lspsaga diagnostic_jump_prev<CR>", o)
      keymap("n", "]e", "<cmd>Lspsaga diagnostic_jump_next<CR>", o)

      -- Only jump to error
      keymap("n", "[E", function()
        require("lspsaga.diagnostic").goto_prev({
          severity = vim.diagnostic.severity.ERROR
        })
      end, o)
      keymap("n", "]E", function()
        require("lspsaga.diagnostic").goto_next({
          severity = vim.diagnostic.severity.ERROR
        })
      end, o)
    end
  }
end

return module

