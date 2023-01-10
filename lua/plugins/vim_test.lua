return {
  'vim-test/vim-test',
  dependencies = { { 'kassio/neoterm' } },
  config = function()
    vim.g['test#strategy'] = 'neoterm'
    vim.g['test#neoterm#term_position'] = 'vert'
    vim.g['test#preserve_screen'] = 1
    vim.g.neoterm_shell = 'zsh'
    vim.g.neoterm_automap_keys = ',TT'
    vim.g.neoterm_default_mod = 'vertical'

    local opts = { silent = true, noremap = true }

    map('n', '<leader>rn', ':TestNearest<cr>', opts)
    map('n', '<leader>rt', ':TestSuite<cr>', opts)
    map('n', '<leader>rf', ':TestFile<cr>', opts)
    map('n', '<leader>rr', ':TestLast<cr>', opts)
  end
}
