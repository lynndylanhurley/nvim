" vim-test / neoterm test runner
let test#strategy = 'neoterm'
let test#neoterm#term_position = 'vert'
let g:test#preserve_screen = 1
let g:neoterm_shell = 'zsh'
let g:neoterm_automap_keys = ',TT'
let g:neoterm_default_mod = 'vertical'

nnoremap <silent> ,rn :TestNearest<cr>
nnoremap <silent> ,rt :TestSuite<cr>
nnoremap <silent> ,rf :TestFile<cr>
nnoremap <silent> ,rr :TestLast --backtrace<cr>

let test#javascript#mocha#executable = 'npm run test --'
" let test#javascript#mocha#file_pattern = '_spec\.jsx?'
