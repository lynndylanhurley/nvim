return {
  'adisen99/codeschool.nvim',
  dependencies = { "rktjmp/lush.nvim" },
  config = function()
    vim.opt.background = 'dark'
    vim.cmd('colorscheme codeschool')
  end
}
