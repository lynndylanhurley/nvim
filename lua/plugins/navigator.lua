local module = {}

function module.init(use)
  use {
    'ray-x/navigator.lua',
    event = "InsertEnter", -- lazy load
    requires = {
      { 'jose-elias-alvarez/nvim-lsp-ts-utils' },
      { 'neovim/nvim-lspconfig' },
      { 'hrsh7th/cmp-nvim-lsp' },
      { 'alexaandru/nvim-lspupdate' },
      { 'williamboman/nvim-lsp-installer'},
      { 'ray-x/guihua.lua', run = 'cd lua/fzy && make' },
    },
    config = function()
      local lspconfig = require('lspconfig')
      local lsp_installer = require('nvim-lsp-installer')
      local capabilities = vim.lsp.protocol.make_client_capabilities()
      local enhance_server_opts = {
        ['sumneko_lua'] = function(options)
          options.settings = {
            Lua = {
              diagnostics = {
                globals = { 'vim' },
              },
            },
          }
        end,

        ['tsserver'] = function(options)
          options.on_attach = function(client, bufnr)
            local ts_utils = require("nvim-lsp-ts-utils")
            ts_utils.setup({})
            ts_utils.setup_client(client)

            -- no default maps, so you may want to define some here
            local opts = { silent = true }
            vim.api.nvim_buf_set_keymap(bufnr, "n", "gs", ":TSLspOrganize<CR>", opts)
            -- vim.api.nvim_buf_set_keymap(bufnr, "n", "gr", ":TSLspRenameFile<CR>", opts)
            vim.api.nvim_buf_set_keymap(bufnr, "n", "gi", ":TSLspImportAll<CR>", opts)
          end
        end,

        ['eslint'] = function(options)
          options.settings = {
            format = { enable = true }, -- this will enable formatting
          }

          options.on_attach = function(client, bufnr)
            client.server_capabilities.documentFormattingProvider = true
            client.server_capabilities.documentRangeFormattingProvider = true
          end
        end
      }

      -- need to init lsp installer before interacting with it
      lsp_installer.setup{}

      function global_on_attach(client, bufnr)
        client.server_capabilities.documentFormattingProvider = false
        client.server_capabilities.documentRangeFormattingProvider = false
      end

      -- loop through installed servers, enhance if defined in above map
      for _, server in ipairs(lsp_installer.get_installed_servers()) do
        local capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)

        local options = {
          capabilities = capabilities
        }

        if enhance_server_opts[server.name] then
          enhance_server_opts[server.name](options)
        end

        local server_on_attach = options.on_attach

        options.on_attach = function(client, bufnr)
          global_on_attach(client, bufnr)

          require('navigator.lspclient.mapping').setup({
            client = client,
            bufnr = bufnr,
            cap = capabilities
          })

          if server_on_attach then
            server_on_attach(client, bufnr)
          end
        end

        lspconfig[server.name].setup(options)
      end

      require'navigator'.setup({
        debug = true,

        -- full list here:
        -- https://github.com/ray-x/navigator.lua/blob/062e7e4ffca22de53c7c304c66a92763d4d30293/lua/navigator/lspclient/mapping.lua
        default_mapping = false,

        keymaps = {
          { key = "gr", func = "require('navigator.reference').reference()" },
          { key = "gD", func = "declaration({ border = 'rounded', max_width = 80 })" },
          { key = 'gd', func = "require('navigator.definition').definition()" },
          { key = "ga", func = "code_action()" },
          { key = 'K', func = "hover({ popup_opts = { border = single, max_width = 80 }})" },
          { key = "gi", func = "implementation()" },
          { key = "<leader>d", func = "type_definition()" },
          { key = "gL", func = "require('navigator.diagnostics').show_diagnostics()" },
          { key = "gG", func = "require('navigator.diagnostics').show_buf_diagnostics()" },
          { key = "]d", func = "diagnostic.goto_next({ border = 'rounded', max_width = 80})" },
          { key = "[d", func = "diagnostic.goto_prev({ border = 'rounded', max_width = 80})" },
          { key = "]r", func = "require('navigator.treesitter').goto_next_usage()" },
          { key = "[r", func = "require('navigator.treesitter').goto_previous_usage()" },
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
          diagnostic_file = "│",
        },

        lsp_installer = true,
      })
    end
  }
end

return module
