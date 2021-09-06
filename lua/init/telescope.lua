local module = {}

function module.init(use)
  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} },
    config = function()
      require('telescope').setup {
        layout_config = {
          prompt_position = "top"
        }
      }

      map('', '<leader>t', '<cmd>Telescope find_files<cr>')
      map('', '<leader>/', '<cmd>Telescope live_grep<cr>')
      map('', '<leader>b', '<cmd>Telescope buffers<cr>')
    end
  }
end

return module
