local module = {}

function module.init(use)
  use {
    'ray-x/navigator.lua',
    requires = {
      {'alexaandru/nvim-lspupdate'},
      {'neovim/nvim-lspconfig'},
      { 'hrsh7th/cmp-nvim-lsp' },
      {'ray-x/guihua.lua', run = 'cd lua/fzy && make'}
    },
    config = function()
      local cfg = {
        lsp = {
          diagnostic_virtual_text = false
        },

        on_attach = function(client, bufn)
          client.resolved_capabilities.document_formatting = false
          client.resolved_capabilities.document_range_formatting = false
        end,

        keymaps = {
          { key = "gd", func = "definition()" },
          { key = "ga", func = "code_action()" },
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
      }

      require'navigator'.setup(cfg)
    end
  }
end

return module
