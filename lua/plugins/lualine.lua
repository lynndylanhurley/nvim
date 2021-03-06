local module = {}

function module.init(use)
  use {
    'nvim-lualine/lualine.nvim',
    requires = {
      {'kyazdani42/nvim-web-devicons'},
    },
    config = function()
      require('lualine').setup {
        options = {
          -- theme = "lighthaus",
          component_separators = { left_sep = '', right_sep = ''},
          section_separators = { left_sep = '', right_sep = ''},
        },

        sections = {
          lualine_c = { {'filename', file_status = true, full_path = false, shorten = true, path = 1 } },
        }
      }
    end
  }
end

return module
