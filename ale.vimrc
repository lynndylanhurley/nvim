" let g:ale_shell = '/bin/sh'
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_delay = 500
let g:ale_fixers = {
      \ 'javascript': ['eslint', 'prettier'],
      \ 'scss': ['prettier'],
      \ 'typescript': ['prettier'],
      \ 'typescriptreact': ['prettier'],
      \ 'css': ['prettier'],
      \ 'ruby': ['rubocop'],
      \ 'python': ['autopep8', 'black'],
      \ 'rust': ['rustfmt'],
      \ 'sql': ['pgformatter'],
      \ 'php': ['php_cs_fixer']
      \ }

let g:ale_linters = {
      \ 'javascript': ['eslint'],
      \ 'typescript': ['eslint'],
      \ 'typescriptreact': ['eslint'],
      \ 'rust': ['analyzer'],
      \ 'php': ['php']
      \ }

" ale / sql
let g:ale_sql_pgformatter_options = '-w 80'

" ale / php
let g:ale_php_cs_fixer_executable = 'tools/php-cs-fixer/vendor/bin/php-cs-fixer'
let g:ale_php_intelephense_use_global = 1

" ale / rust
let g:ale_rust_cargo_use_clippy = executable('cargo-clippy')

" bug with yarn 2
" let s:sdks = finddir('.yarn/sdks', ';')
" if !empty(s:sdks)
"   let g:ale_javascript_eslint_use_global = 1
"   let g:ale_javascript_eslint_executable = s:sdks . '/eslint/bin/eslint.js'
"   let g:ale_javascript_flow_ls_use_global = 1
"   let g:ale_javascript_flow_ls_executable = s:sdks . '/flow-bin/cli.js'
"   let g:ale_javascript_prettier_use_global = 1
"   let g:ale_javascript_prettier_executable = s:sdks . '/prettier/index.js'
" endif

nmap <leader>f <Plug>(ale_fix)
