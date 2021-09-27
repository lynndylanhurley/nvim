local module = {}

function module.init(use)
  use {
    'folke/tokyonight.nvim',
    config = function()
      vim.g.tokyonight_style = "night"
      vim.cmd[[colorscheme tokyonight]]
    end
  }
end

return module
