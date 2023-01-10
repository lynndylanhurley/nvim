return {
  'kartikp10/noctis.nvim',
  dependencies = {
    { 'rktjmp/lush.nvim' }
  },
  config = function()
    vim.cmd[[colorscheme noctis]]
  end
}
