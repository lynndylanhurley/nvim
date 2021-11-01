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

        -- full list here:
        -- https://github.com/ray-x/navigator.lua/blob/062e7e4ffca22de53c7c304c66a92763d4d30293/lua/navigator/lspclient/mapping.lua
        default_mapping = false,

        keymaps = {
          { key = "gr", func = "require('navigator.reference').reference()" },
          { key = "gD", func = "declaration({ border = 'rounded', max_width = 80 })" },
          { key = "gd", func = "definition()" },
          { key = "ga", func = "code_action()" },
          { key = "K", func = "hover({ popup_opts = { border = single, max_width = 80 }})" },
          { key = "gi", func = "implementation()" },
          { key = "<leader>d", func = "type_definition()" },
          { key = "gL", func = "require('navigator.diagnostics').show_diagnostics()" },
          { key = "gG", func = "require('navigator.diagnostics').show_buf_diagnostics()" },
          { key = "]d", func = "diagnostic.goto_next({ border = 'rounded', max_width = 80})" },
          { key = "[d", func = "diagnostic.goto_prev({ border = 'rounded', max_width = 80})" },
          { key = "]r", func = "require('navigator.treesitter').goto_next_usage()" },
          { key = "[r", func = "require('navigator.treesitter').goto_previous_usage()" },
          { key = '<leader>f', func = 'formatting()', mode='n' },
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
