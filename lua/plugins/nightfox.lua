local module = {}

function module.init(use)
  use {
    'EdenEast/nightfox.nvim', config = function()
      vim.cmd('colorscheme nightfox')
    end
  }
end

return module
