return {
  'kkoomen/vim-doge',
  build = ':call doge#install()',
  config = function()
    map('', '<Leader><Space>', ':FloatermToggle<CR>', { silent = true, noremap = true })
  end
}
