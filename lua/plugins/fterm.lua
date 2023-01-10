return {
  'numtostr/FTerm.nvim',
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
    local opts = { noremap = true, silent = true }
    map('n', '<c-space>', '<cmd>lua require("Fterm").toggle()<cr>', opts)
    map('t', '<c-space>', '<c-\\><c-n><cmd>lua require("FTerm").close()<cr>', opts)
  end
}
