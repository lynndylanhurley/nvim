return {
  'gbprod/yanky.nvim',
  dependencies = {
    'kkharji/sqlite.lua',
    'stevearc/dressing.nvim'
  },
  config = function()
    require("yanky").setup({
      preserve_cursor_position = {
        enabled = true,
      },
    })

    vim.keymap.set({"n","x"}, "p", "<Plug>(YankyPutAfter)")
    vim.keymap.set({"n","x"}, "P", "<Plug>(YankyPutBefore)")
    vim.keymap.set({"n","x"}, "gp", "<Plug>(YankyGPutAfter)")
    vim.keymap.set({"n","x"}, "gP", "<Plug>(YankyGPutBefore)")

    vim.keymap.set("n", "<c-p>", "<Plug>(YankyCycleForward)")
    vim.keymap.set("n", "<c-n>", "<Plug>(YankyCycleBackward)")

    -- preserve cursor position on yank
    vim.keymap.set({ "n", "x" }, "y", "<Plug>(YankyYank)")
  end
}
