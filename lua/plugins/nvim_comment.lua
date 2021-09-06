local module = {}

function module.init(use)
  use {
    'terrortylor/nvim-comment',
    config = function()
      require('nvim_comment').setup({
        line_mapping = "gc",
        operator_mapping = "<leader>c<space>"
      })

      map('n', '<leader>c<space>', ':CommentToggle<cr>', { noremap = true, silent = true })
    end
  }
end

return module
