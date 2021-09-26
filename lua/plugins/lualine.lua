local module = {}

function module.init(use)
  use {
    'shadmansaleh/lualine.nvim',
    requires = {
      {'kyazdani42/nvim-web-devicons', opt = true},
      {'EdenEast/nightfox.nvim'},
    },
    config = function()
      require('lualine').setup {
        options = {
          theme = "nightfox"
        },

        sections = {
          lualine_c = { {'filename', file_status = true, full_path = false, shorten = true, path = 1 } },
        }
      }
    end
  }
end

return module
