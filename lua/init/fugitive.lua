local module = {}

function module.init(use)
  use {
    'tpope/vim-fugitive',
    requires = { 'tpope/vim-git' },
    config = function()
      map('n', '<leader>g', ':Git<cr>', { noremap = true, silent = true})
    end
  }
end

return module

