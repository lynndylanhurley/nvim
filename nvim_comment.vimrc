lua << EOF

require('nvim_comment').setup({
  line_mapping = "gc",
  operator_mapping = "<leader>c<space>"
})

EOF

nnoremap <leader>c<space> :CommentToggle<cr>
