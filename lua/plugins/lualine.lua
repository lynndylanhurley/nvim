local module = {}

function module.init(use)
  use {
    'shadmansaleh/lualine.nvim',
    requires = {
      {'kyazdani42/nvim-web-devicons'},
      --[[ {'EdenEast/nightfox.nvim'}, --]]
      -- {'projekt0n/github-nvim-theme'},
    },
    config = function()
      require('lualine').setup {
        options = {
          theme = "onedark",
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
