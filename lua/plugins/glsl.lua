local module = {}

function module.init(use)
  use {
    'tikhomirov/vim-glsl',
    setup = function()
      vim.cmd [[
        autocmd! BufNewFile,BufRead *.vs,*.fs set ft=glsl
      ]]
    end
  }
end

return module
