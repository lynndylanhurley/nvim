local module = {}

function module.init(use)
  use {
    'EdenEast/nightfox.nvim',
    config = function()
      local nightfox = require('nightfox')
      nightfox.setup({fox = "nightfox"})
      vim.cmd('colorscheme nightfox')
    end
  }
end

return module
