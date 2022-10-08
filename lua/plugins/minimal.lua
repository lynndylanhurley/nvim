local module = {}

function module.init(use)
  use {
    'Yazeed1s/minimal.nvim',
    config = function()
      vim.cmd('colorscheme minimal')
    end
  }
end

return module
