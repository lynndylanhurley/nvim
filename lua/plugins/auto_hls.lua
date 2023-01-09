local module = {}

function module.init(use)
  use {
    'asiryk/auto-hlsearch.nvim',
    config = function()
      require("auto-hlsearch").setup()
    end
  }
end

return module

