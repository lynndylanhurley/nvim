local module = {}

function module.init(use)
  use {
    'voldikss/vim-floaterm',
    config = function()
      vim.g.floaterm_width = 0.9
      vim.g.floaterm_height = 0.7
      vim.g.floaterm_winblend = 10
      vim.g.floaterm_autoclose = true

      map('', '<Leader><Space>', ':FloatermToggle<CR>', { silent = true, noremap = true })
    end
  }
end

return module

