local module = {}

function module.init(use)
  use {
    'shaunsingh/nord.nvim',
    config = function()
      vim.cmd[[colorscheme nord]]
    end
  }
end

return module

