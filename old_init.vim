"powerline
set guifont=Source\ Code\ Pro\ for\ Powerline:h14

" Plug check and auto install
let vimPlugInitialized=1
let VimplugReadme=expand('~/.vim/autoload/plug.vim')
if !filereadable(VimplugReadme)
  echo "Installing VimPlug.."
  echo ""
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  let vimPlugInitialized=0
endif

if has('vim_starting')
  if &compatible
    set nocompatible " Be iMproved
  endif
endif

call plug#begin('~/.vim/bundle/')

" themes
Plug 'junegunn/seoul256.vim'
Plug 'EdenEast/nightfox.nvim' " done
Plug 'sainnhe/everforest'
Plug 'sainnhe/sonokai'
Plug 'sainnhe/edge'
Plug 'folke/tokyonight.nvim'

" appearance
Plug 'luochen1990/rainbow'
Plug 'ryanoasis/vim-devicons' " done
Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' } " done
Plug 'eruizc-dev/galaxyline.nvim' " done

"syntax
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} " done
Plug 'tpope/vim-sleuth'

" javascript / typescript
Plug 'tpope/vim-jdaddy', { 'for': ['json'] }

" clojure
Plug 'tpope/vim-leiningen', { 'for': ['clojure'] }
Plug 'tpope/vim-projectionist', { 'for': ['clojure'] }
Plug 'tpope/vim-classpath', { 'for': ['clojure'] }
Plug 'tpope/vim-fireplace', { 'for': ['clojure'] }
Plug 'jpalardy/vim-slime', { 'for': ['clojure'] }
Plug 'guns/vim-clojure-static', { 'for': ['clojure'] }
Plug 'guns/vim-clojure-highlight', { 'for': ['clojure'] }

" ruby
Plug 'tpope/vim-rails', { 'for': ['ruby'] }
Plug 'tpope/vim-bundler', { 'for': ['ruby'] }
Plug 'tpope/vim-rbenv', { 'for': ['ruby'] }
Plug 'tpope/gem-browse', { 'for': ['ruby'] }
Plug 'kana/vim-textobj-user', { 'for': ['ruby'] }
Plug 'nelstrom/vim-textobj-rubyblock', { 'for': ['ruby'] }
"
" typing
Plug 'tommcdo/vim-exchange'
Plug 'tpope/vim-ragtag'
Plug 'tpope/vim-surround' " done
Plug 'tpope/vim-repeat' " done
Plug 'tpope/vim-unimpaired' " done
Plug 'windwp/nvim-autopairs' " done
Plug 'mg979/vim-visual-multi' "done
Plug 'terrortylor/nvim-comment' " done
Plug 'windwp/nvim-ts-autotag'
Plug 'junegunn/vim-easy-align'
Plug 'svermeulen/vim-yoink' " broken
Plug 'folke/which-key.nvim' " dnoe

" treesitter
Plug 'nvim-treesitter/nvim-treesitter-refactor'

" buffer navigation
Plug 'junegunn/vim-slash'
Plug 'bkad/CamelCaseMotion' " done
Plug 'ggandor/lightspeed.nvim' " done

" project / file navigation
Plug 'nvim-lua/popup.nvim' " done
Plug 'bogado/file-line' " done
Plug 'voldikss/vim-floaterm' " done
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' } " done
Plug 'junegunn/fzf.vim' " done
Plug 'kyazdani42/nvim-web-devicons' " done
Plug 'kyazdani42/nvim-tree.lua' " done

" linting / testing
Plug 'ntpeters/vim-better-whitespace' " done
Plug 'kassio/neoterm' " done
Plug 'janko-m/vim-test' " done
Plug 'w0rp/ale'

" git / vcs
Plug 'nvim-lua/plenary.nvim', { 'branch': 'async_jobs_v2' }
Plug 'tpope/vim-git' " done
Plug 'tpope/vim-fugitive' " done
Plug 'christoomey/vim-conflicted'
Plug 'mattn/webapi-vim' " dep for gist-vim
Plug 'mattn/gist-vim'
Plug 'lewis6991/gitsigns.nvim' " done
Plug 'ruanyl/vim-gh-line'

" misc features
Plug 'mbbill/undotree'
Plug 'tpope/vim-rhubarb'
Plug 'tpope/vim-obsession'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-rsi' " done
Plug 'sjl/vitality.vim'
Plug 'tpope/vim-dispatch'
Plug 'moll/vim-bbye'
Plug 'meain/vim-package-info', { 'do': 'npm install' }
Plug 'wfxr/minimap.vim', {'do': ':!cargo install --locked code-minimap'}
Plug 'glepnir/dashboard-nvim' " done
Plug 'kkvh/vim-docker-tools'
Plug 'lukas-reineke/indent-blankline.nvim' " done
Plug 'kevinhwang91/nvim-bqf' " done
Plug 'marcushwz/nvim-workbench'
Plug 'kkoomen/vim-doge', { 'do': { -> doge#install() } }

" nvim lsp
Plug 'neovim/nvim-lspconfig' " done
Plug 'glepnir/lspsaga.nvim' " done
" Plug 'hrsh7th/nvim-compe'

" Plug 'ms-jpq/coq_nvim', {'branch': 'coq'}
" Plug 'ms-jpq/coq.artifacts', {'branch': 'artifacts'}

Plug 'quangnguyen30192/cmp-nvim-ultisnips' " done
Plug 'hrsh7th/cmp-path' " done
Plug 'hrsh7th/cmp-nvim-lsp' " done
Plug 'hrsh7th/nvim-cmp' " done
Plug 'hrsh7th/cmp-buffer' " done
Plug 'hrsh7th/cmp-nvim-lua' " done


Plug 'ray-x/lsp_signature.nvim' " done
Plug 'alexaandru/nvim-lspupdate' " done
Plug 'onsails/lspkind-nvim' " done
Plug 'jose-elias-alvarez/nvim-lsp-ts-utils'
Plug 'folke/lsp-trouble.nvim' " done
Plug 'folke/lsp-colors.nvim' " done

""" snippets
Plug 'SirVer/ultisnips' " dnoe
Plug 'honza/vim-snippets' " done

filetype plugin indent on " required

" Installation check.
if vimPlugInitialized == 0
  echo "Installing Bundles, please ignore key map error messages"
  echo ""
  :PlugInstall
endif

call plug#end()

"Basic Options
syntax enable                 " turn on syntax highlighting
let mapleader = ","

set modeline                   " i don't even know
set modelines=5
set noshowmode                   " indicate insert, replace, visual
set showcmd                    " show info about current operation in status line
set ttyfast                    " indicate fast terminal connection, helps with mouse + redraw stuff
set ruler                      " show line + column number of cursor
set backspace=indent,eol,start
set laststatus=2               " always show status lines, even in non-focused splits
set history=1000
set cpoptions+=J               " sentence has to be followed by two spaces after . ! ?
set lazyredraw                 " don't redraw while using macros, registers, etc.
set matchtime=3                " duration of parens hilight in 1/10 seconds
set showbreak=↪                " string to put at start of lines that have been wrapped
set splitbelow                 " spltting a window will put the new window below the current one
set splitright                 " same as above but for horizontal splits
" set fillchars=diff:⣿

set nottimeout "these two options together determine whether to wait to receive mapping
set timeout

" set autowrite         " write the contents of the file on each :next, :rewind, :make, etc.
set shiftround        " round indent to multiple of shiftwidth
set autoread          " automatically read changes in files from outside of vim (git pull, etc.)
"set title             " set the window title to something meaningful
set nu                " show line numbers
set ignorecase
set smartcase         " override ignorecase if search pattern contains upper case letters
set incsearch         " hilight all search matches
set showmatch         " briefly jump to matching brackets on insert
set hlsearch          " hilight search results
set gdefault          " all regex matches are substituted by default. g toggles this behavior
" set scrolloff=3       " minimum number of screen lines to keep above and below the cursor
" set sidescroll=1      " minimum number of columns to scroll horizontaly
" set sidescrolloff=10  " minimum number of screen lines to keep left and right of the cursor
set linebreak         " wrap lines at convenient points

set list
" set listchars=tab:▸\ ,extends:❯,precedes:❮
set listchars=tab:▸\ ,extends:❯,precedes:❮

set inccommand=split " live preview of search / replace

"use system clipboard
set clipboard=unnamed,unnamedplus

if has("gui")
  set macmeta "use option (alt) as meta key
endif

"Make Vim able to edit crontab files again.
set backupskip=/tmp/*,/private/tmp/*

"Save when losing focus
"au FocusLost * :wa

" Tabs, spaces, wrapping {{{
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set wrap
"set textwidth=80
set formatoptions=qrn1
"set colorcolumn=+1
"}}}

"folding settings {{{
set nofoldenable
set foldmethod=marker   "fold based on indent
set printoptions=paper:letter
set sidescrolloff=5
set mouse=nvi
"}}}

" Wildmenu completion {{{

set wildmenu
set wildmode=list:longest
set wildignore+=.hg,.git,.svn                    " Version control
set wildignore+=*.aux,*.out,*.toc                " LaTeX intermediate files
set wildignore+=*.jpg,*.bmp,*.gif,*.png,*.jpeg   " binary images
set wildignore+=*.o,*.obj,*.exe,*.dll,*.manifest " compiled object files
set wildignore+=*.spl                            " compiled spelling word lists
set wildignore+=*.sw?                            " Vim swap files
set wildignore+=*.DS_Store                       " OSX bullshit
set wildignore+=*.luac                           " Lua byte code

" }}}

"Python/Django
set wildignore+=migrations                       " Django migrations
set wildignore+=*.pyc                            " Python byte code

set re=0

"git
set wildignore=*.o,*.obj,.git,*.pyc,*~,fugitive*

" https://github.com/neovim/neovim/issues/6960
" set norelativenumber

let home = $HOME

let g:python_host_prog = home . '/.pyenv/shims/python'
let g:python2_host_prog = home .'/.pyenv/shims/python2'
let g:python3_host_prog = home . '/.pyenv/shims/python3'

" markdown
let g:vim_markdown_conceal = 0

"Clojure/Leiningen
set wildignore+=classes
"set wildignore+=lib
nmap <M-c> vip:Eval<CR>
autocmd BufNewFile,BufReadPost *.cljx setfiletype clojure
autocmd BufRead *.clj try | silent! Require | catch /^Fireplace/ | endtry
autocmd BufRead *.cljx try | silent! Require | catch /^Fireplace/ | endtry

"rainbow parentheses
let g:rainbow_conf = {
      \	'separately': {
      \		'nerdtree': 0,
      \   'css': 0,
      \   'scss': 0,
      \	}
      \}

"slime
let g:slime_target = "tmux"

" recommended for nvim-compe
set completeopt=menuone,noselect,noinsert

" Avoid showing message extra message when using completion
set shortmess+=c

" conceal markers
" set conceallevel=3
set concealcursor=niv

"for better soft-wrap navigation
nmap j gj
nmap k gk

"for better split navigation
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" now do the same for terminal
tnoremap <Esc> <C-\><C-n>
tnoremap <C-h> <C-\><C-n><C-w>h
tnoremap <C-j> <C-\><C-n><C-w>j
tnoremap <C-k> <C-\><C-n><C-w>k
tnoremap <C-l> <C-\><C-n><C-w>l


set noea

"Hide/Show Marks
let g:showmarks_enable=1

set formatoptions-=o "dont continue comments when pushing o/O

"vertical/horizontal scroll off settings
set scrolloff=3
set sidescrolloff=7
set sidescroll=1

"some stuff to get the mouse going in term
set mouse=a

"tell the term has 256 colors
set t_Co=256

"hide buffers when not displayed
set hidden

" deal with annoying warning message
set confirm

"make <leader>l clear the highlight as well as redraw
nnoremap <leader>l :nohls<CR>
" inoremap <leader>l <C-O>:nohls<CR>

"map save to ctrl + s
" nnoremap <C-s> <ESC>:w<CR>
" noremap  <silent> <C-S> :update<CR>
" vnoremap <silent> <C-S> <C-C>:update<CR>
" inoremap <silent> <C-S> <C-O>:update<CR>

"ragtag.vim
let g:ragtag_global_maps = 1

"jump to last cursor position when opening a file
"dont do it when writing a commit log entry
autocmd BufReadPost * call SetCursorPosition()
function! SetCursorPosition()
    if &filetype !~ 'commit\c'
        if line("'\"") > 0 && line("'\"") <= line("$")
            exe "normal! g`\""
            normal! zz
        endif
    end
endfunction

"actionscript
autocmd BufRead *.as set filetype=actionscript
autocmd BufRead *.mxml set filetype=mxml
let tlist_actionscript_settings = 'actionscript;c:class;f:method;p:property;v:variable'

"hamlc
autocmd BufRead *.hamlc set filetype=haml

"skim
autocmd BufRead *.skim set filetype=slim
autocmd BufRead *.slim set filetype=slim

"wsgi to use python syntax
autocmd BufRead *.wsgi set filetype=python

"ruby confs
autocmd BufRead Vagrantfile set filetype=ruby
autocmd BufRead Berksfile set filetype=ruby
autocmd BufNewFile,BufReadPost Fastfile setfiletype ruby
autocmd BufNewFile,BufReadPost Appfile setfiletype ruby

"python
autocmd BufRead *.py set ts=4

"############# PYTHON ############"
autocmd FileType python set ft=python.django " For SnipMate
autocmd FileType html set ft=htmldjango.html " For SnipMate

" jade
autocmd BufNewFile,BufReadPost *.jade setfiletype jade

" hi link Pmenu markdown
"hi Pmenu ctermfg=NONE ctermbg=236 cterm=NONE guifg=NONE guibg=#444444 gui=NONE
"hi PmenuSel ctermfg=NONE ctermbg=24 cterm=NONE guifg=NONE guibg=#204a87 gui=NONE

" Marks and Quotes
noremap ' `
noremap æ '
noremap ` <C-^>

"toolbars
set guioptions-=m "remove menu bar
set guioptions-=T "remove toolbar

"kill bell
set noerrorbells
set visualbell
set t_vb=

"stop shitting swps
set noswapfile
set nobackup

"supress annoying completion messages
set shortmess+=c

"gundo
nnoremap <leader>u :UndotreeToggle<cr>

"undo
set undofile
set undodir=~/.vim/undodir
set undofile
set undolevels=1000
set undoreload=10000

" async updates
set updatetime=100

"sessions
let g:session_default_to_last=0
let g:session_autoload = 'no'
let g:session_autosave = 'no'

"the silver searcher
let g:agprg="/usr/local/bin/rg --column"
let g:ags_agexe="/usr/local/bin/rg"

"surround
let g:surround_indent = 1

" git gutter
let g:gitgutter_eager = 0

" java / android
let g:android_sdk_path = $ANDROID_HOME

" colorschemes
" source $HOME/.config/nvim/seoul256.vimrc
source $HOME/.config/nvim/nightfox.vimrc
" source $HOME/.config/nvim/everforest.vimrc
" source $HOME/.config/nvim/sonokai.vimrc
" source $HOME/.config/nvim/edge.vimrc
" source $HOME/.config/nvim/tokyonight.vimrc

" source $HOME/.config/nvim/telescope.vimrc
source $HOME/.config/nvim/fzf.vimrc
"source $HOME/.config/nvim/startify.vimrc
source $HOME/.config/nvim/dashboard.vimrc
source $HOME/.config/nvim/galaxyline.vimrc
source $HOME/.config/nvim/ale.vimrc
source $HOME/.config/nvim/test.vimrc
" source $HOME/.config/nvim/vimspector.vimrc
" source $HOME/.config/nvim/nvim_dap.vimrc
source $HOME/.config/nvim/treesitter.vimrc
" source $HOME/.config/nvim/completion.vimrc
source $HOME/.config/nvim/cmp.vimrc
source $HOME/.config/nvim/gist.vimrc
" " source $HOME/.config/nvim/chadtree.vimrc
source $HOME/.config/nvim/nvim_tree.vimrc
source $HOME/.config/nvim/yoink.vimrc
source $HOME/.config/nvim/camelcasemotion.vimrc
source $HOME/.config/nvim/minimap.vimrc
source $HOME/.config/nvim/floaterm.vimrc
source $HOME/.config/nvim/indent_blankline.vimrc
" source $HOME/.config/nvim/conoline.vimrc
source $HOME/.config/nvim/gitsigns.vimrc
source $HOME/.config/nvim/nvim_autopairs.vimrc
" source $HOME/.config/nvim/pears.vimrc
" source $HOME/.config/nvim/vsnip.vimrc
source $HOME/.config/nvim/ultisnips.vimrc
source $HOME/.config/nvim/nvim_comment.vimrc
source $HOME/.config/nvim/lsp_trouble.vimrc
source $HOME/.config/nvim/lsp_colors.vimrc
source $HOME/.config/nvim/workbench.vimrc
source $HOME/.config/nvim/whitespace.vimrc
source $HOME/.config/nvim/gh_line.vimrc
source $HOME/.config/nvim/which_key.vimrc
" source $HOME/.config/nvim/neogit.vimrc
