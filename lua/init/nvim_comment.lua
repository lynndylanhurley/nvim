local module = {}

function module.init(use)
  use {
    'terrortylor/nvim-comment',
    config = function()
      require('nvim_comment').setup({
        line_mapping = "gc",
        operator_mapping = "<leader>c<space>"
      })
    end
  }
end

return module
