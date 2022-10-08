local module = {}

function module.init(use)
  use {
    'EdenEast/nightfox.nvim',
    config = function()
      -- local nightfox = require('nightfox')
      -- nightfox.setup({fox = "nordfox"})
      vim.cmd('colorscheme carbonfox')
    end
  }
end

return module
