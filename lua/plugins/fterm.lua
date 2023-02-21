return {
  'numtostr/FTerm.nvim',
  lazy = false,
  config = function()
    require'FTerm'.setup({
      dimensions  = {
        height = 0.8,
        width = 0.8,
        x = 0.5,
        y = 0.5
      },
      border = 'single', -- or 'double'
      auto_close = true,
    })
    vim.keymap.set('n', '<c-space>', '<cmd>lua require("FTerm").toggle()<cr>')
    vim.keymap.set('t', '<c-space>', '<c-\\><c-n><cmd>lua require("FTerm").close()<cr>')
  end
}
