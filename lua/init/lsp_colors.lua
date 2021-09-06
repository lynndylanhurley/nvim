local module = {}

function module.init(use)
  use { 
    'folke/lsp-colors.nvim',
    config = function()
      require("lsp-colors").setup()
    end
  }
end

return module



