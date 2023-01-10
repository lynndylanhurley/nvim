return {
  'mcchrish/zenbones.nvim',
  dependencies = "rktjmp/lush.nvim",
  config = function()
    vim.cmd[[colorscheme neobones]]
  end
}
