local module = {}

function module.init(use)
  use {
    'aktersnurra/no-clown-fiesta.nvim',
    config = function()
      require("no-clown-fiesta").setup({})
    end
  }
end

return module
