local module = {}

function module.init(use)
  use {
    "martinsione/darkplus.nvim",
    config = function()
      vim.cmd[[colorscheme darkplus]]
    end
  }
end

return module
