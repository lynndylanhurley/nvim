return {
  'numToStr/Comment.nvim',
  config = function()
    require('Comment').setup({
      toggler = {
          ---Line-comment toggle keymap
          line = '<leader>c<space>',
          ---Block-comment toggle keymap
          block = '<leader>c<space>'
      },
      ---LHS of operator-pending mappings in NORMAL and VISUAL mode
      opleader = {
          ---Line-comment keymap
          line = '<leader>c<space>',
          ---Block-comment keymap
          block = '<leader>c<space>'
      }
    })
  end
}
