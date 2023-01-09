local module = {}

vim.g.lsp_mason_mappings = {
  als 	= 'ada-language-server',
  angularls 	= 'angular-language-server',
  ansiblels 	= 'ansible-language-server',
  apex_ls 	= 'apex-language-server',
  arduino_language_server 	= 'arduino-language-server',
  asm_lsp 	= 'asm-lsp',
  astro 	= 'astro-language-server',
  awk_ls 	= 'awk-language-server',
  bashls 	= 'bash-language-server',
  beancount 	= 'beancount-language-server',
  bicep 	= 'bicep-lsp',
  bsl_ls 	= 'bsl-language-server',
  bufls 	= 'buf-language-server',
  clangd 	= 'clangd',
  clarity_lsp 	= 'clarity-lsp',
  clojure_lsp 	= 'clojure-lsp',
  cmake 	= 'cmake-language-server',
  codeqlls 	= 'codeql',
  crystalline 	= 'crystalline',
  csharp_ls 	= 'csharp-language-server',
  cssls 	= 'css-lsp',
  cssmodules_ls 	= 'cssmodules-language-server',
  cucumber_language_server 	= 'cucumber-language-server',
  dagger 	= 'cuelsp',
  denols 	= 'deno',
  dhall_lsp_server 	= 'dhall-lsp',
  diagnosticls 	= 'diagnostic-languageserver',
  dockerls 	= 'dockerfile-language-server',
  dotls 	= 'dot-language-server',
  efm 	= 'efm',
  elixirls 	= 'elixir-ls',
  elmls 	= 'elm-language-server',
  ember 	= 'ember-language-server',
  emmet_ls 	= 'emmet-ls',
  erg_language_server 	= 'erg-language-server',
  erlangls 	= 'erlang-ls',
  esbonio 	= 'esbonio',
  eslint 	= 'eslint-lsp',
  flux_lsp 	= 'flux-lsp',
  foam_ls 	= 'foam-language-server',
  fortls 	= 'fortls',
  fsautocomplete 	= 'fsautocomplete',
  glint 	= 'glint',
  golangci_lint_ls 	= 'golangci-lint-langserver',
  gopls 	= 'gopls',
  gradle_ls 	= 'gradle-language-server',
  grammarly 	= 'grammarly-languageserver',
  graphql 	= 'graphql-language-service-cli',
  groovyls 	= 'groovy-language-server',
  haxe_language_server 	= 'haxe-language-server',
  hls 	= 'haskell-language-server',
  hoon_ls 	= 'hoon-language-server',
  html 	= 'html-lsp',
  intelephense 	= 'intelephense',
  jdtls 	= 'jdtls',
  jedi_language_server 	= 'jedi-language-server',
  jsonls 	= 'json-lsp',
  jsonnet_ls 	= 'jsonnet-language-server',
  julials 	= 'julia-lsp',
  kotlin_language_server 	= 'kotlin-language-server',
  lelwel_ls 	= 'lelwel',
  lemminx 	= 'lemminx',
  ltex 	= 'ltex-ls',
  luau_lsp 	= 'luau-lsp',
  marksman 	= 'marksman',
  mm0_ls 	= 'metamath-zero-lsp',
  neocmake 	= 'neocmakelsp',
  nickel_ls 	= 'nickel-lang-lsp',
  nimls 	= 'nimlsp',
  ocamllsp 	= 'ocaml-lsp',
  omnisharp 	= 'omnisharp',
  opencl_ls 	= 'opencl-language-server',
  perlnavigator 	= 'perlnavigator',
  phpactor 	= 'phpactor',
  powershell_es 	= 'powershell-editor-services',
  prismals 	= 'prisma-language-server',
  prosemd_lsp 	= 'prosemd-lsp',
  psalm 	= 'psalm',
  puppet 	= 'puppet-editor-services',
  purescriptls 	= 'purescript-language-server',
  pylsp 	= 'python-lsp-server',
  pyright 	= 'pyright',
  quick_lint_js 	= 'quick-lint-js',
  r_language_server 	= 'r-languageserver',
  reason_ls 	= 'reason-language-server',
  remark_ls 	= 'remark-language-server',
  rescriptls 	= 'rescript-lsp',
  rnix 	= 'rnix-lsp',
  robotframework_ls 	= 'robotframework-lsp',
  rome 	= 'rome',
  ruby_ls 	= 'ruby-lsp',
  rust_analyzer 	= 'rust-analyzer',
  salt_ls 	= 'salt-lsp',
  serve_d 	= 'serve-d',
  slint_lsp 	= 'slint-lsp',
  solang 	= 'solang',
  solargraph 	= 'solargraph',
  solc 	= 'solidity',
  solidity 	= 'solidity-ls',
  sorbet 	= 'sorbet',
  sourcery 	= 'sourcery',
  spectral 	= 'spectral-language-server',
  sqlls 	= 'sqlls',
  sqls 	= 'sqls',
  stylelint_lsp 	= 'stylelint-lsp',
  sumneko_lua 	= 'lua-language-server',
  svelte 	= 'svelte-language-server',
  svlangserver 	= 'svlangserver',
  svls 	= 'svls',
  tailwindcss 	= 'tailwindcss-language-server',
  taplo 	= 'taplo',
  teal_ls 	= 'teal-language-server',
  terraformls 	= 'terraform-ls',
  texlab 	= 'texlab',
  tflint 	= 'tflint',
  theme_check 	= 'shopify-theme-check',
  tsserver 	= 'typescript-language-server',
  vala_ls 	= 'vala-language-server',
  verible 	= 'verible',
  vimls 	= 'vim-language-server',
  visualforce_ls 	= 'visualforce-language-server',
  vls 	= 'vls',
  volar 	= 'vue-language-server',
  vuels 	= 'vetur-vls',
  wgsl_analyzer 	= 'wgsl-analyzer',
  yamlls 	= 'yaml-language-server',
  zk 	= 'zk',
  zls 	= 'zls',
}

function module.init(use)
  use {
    'williamboman/mason.nvim',
    requires = {
      -- lsp (language server support)
      "williamboman/mason-lspconfig.nvim",
      "neovim/nvim-lspconfig",
      "glepnir/lspsaga.nvim",
      "jose-elias-alvarez/nvim-lsp-ts-utils",
      "WhoIsSethDaniel/mason-tool-installer.nvim",

      -- cmp (autocompletion)
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-buffer',
      'hrsh7th/cmp-path',
      'hrsh7th/cmp-cmdline',
      'hrsh7th/nvim-cmp',
      'windwp/nvim-autopairs',
      'onsails/lspkind-nvim',

      -- code snippets
      'honza/vim-snippets',
      'dcampos/cmp-snippy',
      'dcampos/nvim-snippy',
      'honza/vim-snippets',

      -- null-ls (linting + formatting)
      {
        'jose-elias-alvarez/null-ls.nvim',
        requires = {
          { 'nvim-lua/plenary.nvim' },
        },
      },
      "jayp0521/mason-null-ls.nvim"
    },
    config = function()
      local keymap = vim.keymap.set
      local lsp_servers = {
        vim.g.lsp_mason_mappings["eslint"],
        vim.g.lsp_mason_mappings["tsserver"],
        vim.g.lsp_mason_mappings["cssls"],
        vim.g.lsp_mason_mappings["intelephense"],
        vim.g.lsp_mason_mappings["dockerls"],
        vim.g.lsp_mason_mappings["dotls"],
        vim.g.lsp_mason_mappings["graphql"],
        vim.g.lsp_mason_mappings["html"],
        vim.g.lsp_mason_mappings["rust_analyzer"],
        vim.g.lsp_mason_mappings["yamlls"],
      }

      local null_ls = require('null-ls')
      local snippy = require("snippy")
      local lspkind = require('lspkind')
      local cmp = require('cmp')
      local mason_lspconfig = require("mason-lspconfig")

      -- configure LSP servers
      local enhance_server_opts = {
        ['sumneko_lua'] = function(options)
          options.settings = {
            Lua = { diagnostics = { globals = { 'vim' } } }
          }

          -- prefer lsp formatting
          options.on_attach = function(client, bufnr)
          end
        end,

        ['tsserver'] = function(options)
          options.on_attach = function(client, bufnr)
            local ts_utils = require("nvim-lsp-ts-utils")
            ts_utils.setup({})
            ts_utils.setup_client(client)

            -- let eslint do the formatting
            client.server_capabilities.documentFormattingProvider = false
            client.server_capabilities.documentRangeFormattingProvider = false

            -- no default maps, so you may want to define some here
            local opts = {
              silent = true,
              -- format = { enable = false } -- prefer eslint for formatting
            }
            vim.api.nvim_buf_set_keymap(bufnr, "n", "gs",
              ":TSLspOrganize<CR>", opts)
            -- vim.api.nvim_buf_set_keymap(bufnr, "n", "gr", ":TSLspRenameFile<CR>", opts)
            vim.api.nvim_buf_set_keymap(bufnr, "n", "gi",
              ":TSLspImportAll<CR>", opts)
          end
        end,

        ['eslint'] = function(options)
          options.settings = {
            enable = true,
            format = { enable = true }, -- this will enable formatting
            lintTask = {
              enable = true
            }
          }

          options.filetypes = {
            'javascript', 'javascriptreact', 'javascript.jsx',
            'typescript', 'typescriptreact', 'typescript.tsx', 'vue'
          }

          options.on_attach = function(client, bufnr)
            client.server_capabilities.documentFormattingProvider = true
            client.server_capabilities.documentRangeFormattingProvider = true
            -- client.server_capabilities.document_formatting = true
            -- client.server_capabilities.documentRangeFormattingProvider = true
          end
        end
      }

      require("mason").setup()

      mason_lspconfig.setup({
        automatic_installation = true
      })

      -- settings shared across all LSP servers
      local global_on_attach = function(client, _)
        client.server_capabilities.documentFormattingProvider = true
        client.server_capabilities.documentRangeFormattingProvider = true
        -- navic.attach(client, bufnr)
      end

      -- initialize buffer with appropriate LSP handler
      mason_lspconfig.setup_handlers({
        function(server_name)
          local server_capabilities = require("cmp_nvim_lsp").default_capabilities()
          local options = { capabilities = server_capabilities }

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
        ensure_installed = lsp_servers,
        auto_update = true
      })

      -- install null-ls syntax checker deps
      require("mason-null-ls").setup({
        automatic_installation = true,
        -- null_ls_sources = formatters,
        auto_update = true
      })
      -- require("mason-null-ls").check_install(true)

      -- linter / formatter
      null_ls.setup()

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

      -- snippets
      snippy.setup({
        mappings = {
          is = {
            ["<Tab>"] = "expand_or_advance",
            ["<S-Tab>"] = "previous",
          },
          nx = {
            ["<leader>x"] = "cut_text",
          },
        },
      })

      -- completion
      cmp.setup {
        snippet = {
          expand = function(args)
            require'snippy'.expand_snippet(args.body)
          end
        },

        formatting = {
          format = lspkind.cmp_format(),
        },

        sources = cmp.config.sources({
          {name = 'snippy', keyword_length = 2},
          {name = 'nvim_lsp', keyword_length = 2},
          {name = 'path'},
        }),

        view = {
          entries = 'native'
        }
      }

      -- auto-close parens + brackets
      require('nvim-autopairs').setup({
        disable_filetype = { "TelescopePrompt" , "guihua", "guihua_rust", "clap_input" },
      })

      -- default keymap options
      local o = { silent = true }

      -- format keymaps
      keymap('n', '<leader>f', '<cmd>lua vim.lsp.buf.format()<cr>', o)

      -- lsp keymaps
      keymap("n", "gh", "<cmd>Lspsaga lsp_finder<CR>", o)
      keymap("n", "K", "<cmd>Lspsaga hover_doc<CR>", o)
      keymap({ "n", "v" }, "ga", "<cmd>Lspsaga code_action<CR>", o)
      keymap("n", "go", "<cmd>LSoutlineToggle<CR>", o)
      keymap("n", "gr", "<cmd>Lspsaga rename<CR>", o)
      keymap("n", "gd", "<cmd>Lspsaga peek_definition<CR>", o)
      keymap("n", "gD", vim.lsp.buf.type_definition, o)
      keymap("n", "gi", vim.lsp.buf.implementation, o)
      -- keymap("n", "gx", "<cmd>Lspsaga show_cursor_diagnostics<CR>", o)
      keymap("n", "gx", "<cmd>Lspsaga show_line_diagnostics<CR>", o)
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
