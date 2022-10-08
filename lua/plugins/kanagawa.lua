local module = {}

function module.init(use)
  use {
    'rebelot/kanagawa.nvim',
    config = function()
      vim.cmd('colorscheme kanagawa')
    end
  }
end

return module


