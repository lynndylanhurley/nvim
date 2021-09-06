local module = {}

function module.init(use)
  use {
    'junegunn/seoul256.vim', config = function()
      vim.g.seoul256_background = 235
      vim.cmd('colorscheme seoul256')
      vim.cmd('syntax enable')
    end
  }
end

return module
