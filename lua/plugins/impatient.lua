local module = {}

function module.init(use)
  use {
    'lewis6991/impatient.nvim',
    config = function()
      require('impatient')
    end
  }
end

return module
