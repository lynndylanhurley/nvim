local module = {}

function module.init(use)
  use {
    'Yazeed1s/oh-lucy.nvim',
    config = function()
      vim.cmd[[colorscheme oh-lucy-evening]]
    end
  }
end

return module


