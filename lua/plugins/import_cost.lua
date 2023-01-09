local module = {}

function module.init(use)
  use {
    'barrett-ruth/import-cost.nvim',
    run = 'sh install.sh yarn',
    config = function()
      require('import-cost').setup({})
    end
  }
end

return module

