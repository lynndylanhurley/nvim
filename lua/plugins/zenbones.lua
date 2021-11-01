
local module = {}

function module.init(use)
  use {
    'mcchrish/zenbones.nvim',
    requires = "rktjmp/lush.nvim",
    config = function()
      vim.cmd[[colorscheme neobones]]
    end
  }
end

return module
