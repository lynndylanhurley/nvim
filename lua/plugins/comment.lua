local module = {}

function module.init(use)
  use {
    'numToStr/Comment.nvim',
    config = function()
        require('Comment').setup {
          toggler = {
            line = '<leader>c<space>',
            block = '<leader>c<space>'
          }
        }
    end
  }
end

return module


