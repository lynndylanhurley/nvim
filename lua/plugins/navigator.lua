return {
  'ray-x/navigator.lua',
  dependencies = {
    { 'jose-elias-alvarez/nvim-lsp-ts-utils' },
    { 'neovim/nvim-lspconfig' },
    { 'hrsh7th/cmp-nvim-lsp' },
    { 'alexaandru/nvim-lspupdate' },
    { 'williamboman/nvim-lsp-installer' },
    { 'ray-x/guihua.lua', build = 'cd lua/fzy && make' },
    { 'glepnir/lspsaga.nvim'},
    -- { 'SmiteshP/nvim-navic' }
  },
  config = function()
    local lspconfig = require('lspconfig')
    local lsp_installer = require('nvim-lsp-installer')
    local capabilities = vim.lsp.protocol.make_client_capabilities()
    local saga = require('lspsaga')
    local finder = require('lspsaga.finder')
    -- local navic = require("nvim-navic")

    lsp_finder = function()
      finder:lsp_finder()
    end

    saga.init_lsp_saga()

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

    -- need to init lsp installer before interacting with it
    lsp_installer.setup {}

    function global_on_attach(client, bufnr)
      client.server_capabilities.documentFormattingProvider = false
      client.server_capabilities.documentRangeFormattingProvider = false
      -- navic.attach(client, bufnr)
    end

    -- loop through installed servers, enhance if defined in above map
    for _, server in ipairs(lsp_installer.get_installed_servers()) do
      local server_capabilities =
      require('cmp_nvim_lsp').update_capabilities(capabilities)

      local options = { capabilities = server_capabilities }

      if enhance_server_opts[server.name] then
        enhance_server_opts[server.name](options)
      end

      local server_on_attach = options.on_attach

      options.on_attach = function(client, bufnr)
        global_on_attach(client, bufnr)

        require('navigator.lspclient.mapping').setup({
          client = client,
          bufnr = bufnr,
          cap = server_capabilities
        })

        if server_on_attach then
          server_on_attach(client, bufnr)
        end
      end

      lspconfig[server.name].setup(options)
    end

    require 'navigator'.setup({
      debug = false,

      -- full list here:
      -- https://github.com/ray-x/navigator.lua/blob/062e7e4ffca22de53c7c304c66a92763d4d30293/lua/navigator/lspclient/mapping.lua
      default_mapping = false,

      keymaps = {
        {
          key = "gr",
          func = lsp_finder,
          desc = 'lsp_finder'
        },
        {
          key = "gd",
          func = function() require('lspsaga.definition'):preview_definition() end,
          desc = 'preview_definition'
        }, {
          key = 'gD',
          func = require('navigator.definition').definition,
          desc = 'definition'
        },
        {
          key = "ga",
          func = function() require('lspsaga.codeaction'):code_action() end,
          desc = 'code_action'
        }, {
          key = 'K',
          func = function() require('lspsaga.hover'):render_hover_doc() end,
          desc = 'hover'
        }, {
          key = "gi",
          func = vim.lsp.buf.implementation,
          desc = 'implementation'
        }, {
          key = "<leader>d",
          func = vim.lsp.buf.type_definition,
          desc = 'type_definition'
          -- }, {
          --   key = 'gh',
          --   func = require('lspsaga.signaturehelp').signature_help,
          --   desc = 'signature_help'
        }, {
          key = "gL",
          func = require('navigator.diagnostics').show_diagnostics,
          desc = 'show_diagnostics'
        }, {
          key = "gG",
          func = require('navigator.diagnostics').show_buf_diagnostics,
          desc = 'show_buf_diagnostics'
        }, {
          key = "]d",
          func = vim.diagnostic.goto_next,
          desc = 'goto_next'
        }, {
          key = "[d",
          func = vim.diagnostic.goto_prev,
          desc = 'goto_prev'
        },
        {
          key = "]r",
          func = require('navigator.treesitter').goto_next_usage,
          desc = 'goto_next_usage'
        },
        {
          key = "[r",
          func = require('navigator.treesitter').goto_previous_usage,
          desc = 'goto_previous_usage'
        }
        -- { key = '<leader>f', func = 'formatting()', mode='n' },
        -- { key = '<leader>f', func = 'range_formatting()', mode='v' },
      },

      icons = {
        -- Code action
        code_action_icon = "│", -- "",
        -- code lens
        code_lens_action_icon = "│",
        -- Diagnostics
        diagnostic_head = "│",
        diagnostic_err = "│",
        diagnostic_warn = "│",
        diagnostic_info = "│",
        diagnostic_hint = "│",

        diagnostic_head_severity_1 = "│",
        diagnostic_head_severity_2 = "│",
        diagnostic_head_severity_3 = "│",
        diagnostic_head_description = "│",
        diagnostic_virtual_text = "│",
        diagnostic_file = "│"
      },

      lsp_installer = true,

      lsp = { format_on_save = false }
    })
  end
}
