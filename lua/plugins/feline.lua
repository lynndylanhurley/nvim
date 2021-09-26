local module = {}

function module.init(use)
  use {
    'famiu/feline.nvim',
    config = function()
      require('feline').setup()
    end
  }
end

return module
