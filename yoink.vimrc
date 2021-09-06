" cycle through paste history
nmap p <plug>(YoinkPaste_p)
nmap P <plug>(YoinkPaste_P)
nmap <c-p> <plug>(YoinkPostPasteSwapBack)
nmap <c-u> <plug>(YoinkPostPasteSwapForward)

" preserve cursor position when yanking
nmap y <plug>(YoinkYankPreserveCursorPosition)
xmap y <plug>(YoinkYankPreserveCursorPosition)

" preserve yank history across sessions
let g:yoinkSavePersistently = 1
