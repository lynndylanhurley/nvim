local module = {}

function module.init(use)
  use {
    'folke/which-key.nvim',
    config = function()
      require("which-key").setup {}
    end
  }
end

return module
