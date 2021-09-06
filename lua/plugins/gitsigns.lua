local module = {}

function module.init(use)
  use {
    'lewis6991/gitsigns.nvim',
    requires = {
      { 'nvim-lua/plenary.nvim' }
    },
    config = function()
      require('gitsigns').setup()
    end
  }
end

return module
