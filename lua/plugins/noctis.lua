local module = {}

function module.init(use)
  use {
    'kartikp10/noctis.nvim',
    requires = {
      { 'rktjmp/lush.nvim' }
    },
    config = function()
      vim.cmd[[colorscheme noctis]]
    end
  }
end

return module


