local module = {}

function module.init(use)
  use {
    'tpope/vim-fugitive',
    requires = {
      'tpope/vim-git',
      'rbong/vim-flog'
    },
    config = function()
      map('n', '<leader>g', ':Git<cr>', { noremap = true, silent = true})
      map('n', '<leader>c', ':Flog<cr>', { noremap = true, silent = true})
    end
  }
end

return module
