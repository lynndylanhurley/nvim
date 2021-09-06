local module = {}

function module.init(use)
  use {
    'junegunn/gv.vim',
    requires = {{'tpope/vim-fugitive'}},
    config = function()
      map('n', '<leader>c', ':GV<cr>', {noremap = true, silent = true})
    end
  }
end

return module
