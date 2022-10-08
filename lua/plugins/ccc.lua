local module = {}

function module.init(use)
  use {
    "uga-rosa/ccc.nvim",
    config = function()
      require("ccc").setup({
        highlighter = {
          auto_enable = true
        }
      })
    end
  }
end

return module

