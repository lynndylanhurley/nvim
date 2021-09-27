local module = {}

function module.init(use)
  use {
    'karb94/neoscroll.nvim',
    config = function()
      require('neoscroll').setup()
    end
  }
end

return module
