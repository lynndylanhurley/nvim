nnoremap <leader>t <cmd>Telescope find_files<cr>
nnoremap <leader>/ <cmd>Telescope live_grep<cr>
nnoremap <leader>b <cmd>Telescope buffers<cr>
nnoremap <leader>c <cmd>Telescope git_commits<cr>

lua <<EOF
require('telescope').setup {}
EOF
