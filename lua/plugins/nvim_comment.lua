return {
  'terrortylor/nvim-comment',
  dependencies = {
    { 'JoosepAlviste/nvim-ts-context-commentstring' }
  },
  config = function()
    -- context aware comment string
    require'nvim-treesitter.configs'.setup {
      context_commentstring = {
        enable = true
      }
    }

    require('nvim_comment').setup({
      line_mapping = "gc",
      operator_mapping = "<leader>c<space>",
      hook = function()
        require("ts_context_commentstring.internal").update_commentstring()
      end
    })

    map('n', '<leader>c<space>', ':CommentToggle<cr>', { noremap = true, silent = true })
  end
}
