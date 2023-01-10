return {
  'tikhomirov/vim-glsl',
  config = function()
    vim.cmd [[autocmd! BufNewFile,BufRead *.vs,*.fs set ft=glsl]]
  end
}
