return {
  'lewis6991/gitsigns.nvim',
  lazy = false,
  dependencies = {
    { 'nvim-lua/plenary.nvim' }
  },
  config = function()
    require('gitsigns').setup()
  end
}
