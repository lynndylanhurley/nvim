"colors
let g:seoul256_background=235
colorscheme seoul256
set termguicolors
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
set background=dark

" hilight indention tabs
hi NonText ctermfg=darkgrey guifg=#565656
hi clear SpecialKey
hi link SpecialKey NonText
hi SpecialKey ctermfg=darkgrey guifg=#565656

" nvim lsp highlight groups
" https://github.com/junegunn/seoul256.vim/issues/74
highlight! link LspDiagnosticsSignError Exception
highlight! link LspDiagnosticsSignWarning WarningMsg

" split color
hi vertsplit guifg=#2b2b2b guibg=#2b2b2b

" set terminal colors
if has('nvim')
  let g:terminal_color_0 = '#4E4E4E'
  let g:terminal_color_8 = '#626262'

  let g:terminal_color_1 = '#D68787'
  let g:terminal_color_9 = '#D75F87'

  let g:terminal_color_2 = '#5F865F'
  let g:terminal_color_10 = '#87AF87'

  let g:terminal_color_3 = '#D8AF5F'
  let g:terminal_color_11 = '#FFD787'

  let g:terminal_color_4 = '#85ADD4'
  let g:terminal_color_12 = '#ADD4FB'

  let g:terminal_color_5 = '#D7AFAF'
  let g:terminal_color_13 = '#FFAFAF'

  let g:terminal_color_6 = '#87AFAF'
  let g:terminal_color_14 = '#87D7D7'

  let g:terminal_color_7 = '#D0D0D0'
  let g:terminal_color_15 = '#E4E4E4'
endif
