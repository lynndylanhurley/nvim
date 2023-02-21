return {
  "catppuccin/nvim",
  name = "catppuccin",
  lazy = false,
  priority = 1000,
  config = function()
    require("catppuccin").setup({
      flavor = 'latte',
      background = { light = 'latte' }
    })
    vim.cmd('colorscheme catppuccin-latte')
  end
}
