return {
  'AlexvZyl/nordic.nvim',
  lazy = false,
  priority = 1000,
  dependencies = {
    {'nvim-lualine/lualine.nvim'},
  },
  config = function()
    local c = require('nordic.colors')

    require('nordic').load({
      nordic = {
        reduced_blue = true
      },
      ts_context = {
        dark_background = true
      },
      override = {
        Comment = {
          fg = c.gray5
        },
        NeoTreeGitModified = {
          fg = c.green.base
        },
        NeoTreeGitAdded = {
          fg = c.green.base
        },
        NeoTreeGitConflict = {
          fg = c.red.base
        },
        NeoTreeGitUntracked = {
          fg = c.gray5
        },
        Visual = {
          bg = c.gray1,
          bold = false
        }
      }
    })

    require('lualine').setup({
      options = {
        theme = 'nordic'
      }
    })
  end
}
