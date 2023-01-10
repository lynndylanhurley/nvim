return  {
  "cseickel/diagnostic-window.nvim",
  dependencies = { "MunifTanjim/nui.nvim" },
  config = function()
    local o = { silent = true }
    vim.keymap.set("n", "gx", "<cmd>DiagWindowShow<CR>", o)
  end
}
