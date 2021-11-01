local module = {}

function module.init(use)
  use {
    'tanvirtin/monokai.nvim',
    requires = "rktjmp/lush.nvim",
    config = function()
      vim.cmd[[colorscheme monokai_soda]]
    end
  }
end

return module

