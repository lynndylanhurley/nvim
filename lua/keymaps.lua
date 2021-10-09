-- set leader to comma
vim.g.mapleader = ','

-- clear search
map('n', '<leader>l', ':set nohls<cr>', { noremap = true, silent = true })

-- split navigation
map('', '<c-h>', '<c-w>h')
map('', '<c-j>', '<c-w>j')
map('', '<c-k>', '<c-w>k')
map('', '<c-l>', '<c-w>l')

-- termital split navigation
-- map('t', '<esc>', '<c-\\><c-n>')
map('t', '<c-h>', '<c-\\><c-n><c-w>h')
map('t', '<c-j>', '<c-\\><c-n><c-w>j')
map('t', '<c-k>', '<c-\\><c-n><c-w>k')
map('t', '<c-l>', '<c-\\><c-n><c-w>l')

-- buffer write shortcut
map('', '<c-s>', '<ESC>:w<CR>')
map('i', '<c-s>', '<ESC>:w<CR>')
