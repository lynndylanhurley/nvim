return {
  'rose-pine/neovim',
  name = 'rose-pine',
  lazy = false,
  priority = 1000,
  config = function()
    require("rose-pine").setup()
    vim.o.background = 'light'
    vim.cmd('colorscheme rose-pine')
  end
}
