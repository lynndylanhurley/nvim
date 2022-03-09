-- undo handling
vim.opt.undofile = true
vim.opt.undodir= vim.fn.stdpath('config') .. '/undo'
vim.opt.undolevels = 1000
vim.opt.undoreload = 10000

-- testing undo

vim.o.clipboard = 'unnamed,unnamedplus'

vim.o.backspace = 'indent,eol,start'

-- true color support
vim.o.termguicolors = true

-- automatically read changes in files from outside of vim (git pull, etc.)
vim.o.autoread = true

-- live preview of search / replace
vim.o.inccommand = 'split'

vim.o.ignorecase = true
-- override ignorecase if search pattern contains upper case letters
vim.o.smartcase = true
-- hilight all search matches
vim.o.incsearch = true
-- briefly jump to matching brackets on insert
vim.o.showmatch = true
-- hilight search results
vim.o.hlsearch  = true
-- all regex matches are substituted by default. g toggles this behavior
vim.o.gdefault  = true

-- spltting a window will put the new window below the current one
vim.o.splitbelow = true
-- same as above but for horizontal splits
vim.o.splitright = true

-- disable backups
vim.o.swapfile = false
vim.o.backup = false
vim.o.writebackup = false

-- show line numbers
vim.wo.number = true

-- wrap lines at convenient points
vim.wo.wrap = true
vim.wo.linebreak = true

vim.bo.tabstop = 2
vim.bo.shiftwidth = 2
vim.bo.softtabstop = 2
vim.bo.expandtab = true

-- enable mouse interaction
vim.o.mouse = 'a'

-- python venv shims
local home = vim.env.HOME
vim.g.python_host_prog = home .. '/.pyenv/shims/python'
vim.g.python2_host_prog = home ..'/.pyenv/shims/python2'
vim.g.python3_host_prog = home .. '/.pyenv/shims/python3'
