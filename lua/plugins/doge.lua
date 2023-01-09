local module = {}

function module.init(use)
  use {
    'kkoomen/vim-doge',
    run = ':call doge#install()',
    config = function()
      map('', '<Leader><Space>', ':FloatermToggle<CR>', { silent = true, noremap = true })
    end
  }
end

return module
