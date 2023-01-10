return {
  'folke/lsp-trouble.nvim',
  config = function()
    require("trouble").setup {}
    map('n', '<leader>xx', '<cmd>LspTroubleToggle<cr>', { noremap = true, silent = true })
  end
}
