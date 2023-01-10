return {
  'tanvirtin/monokai.nvim',
  dependencies = { "rktjmp/lush.nvim" },
  config = function()
    vim.cmd[[colorscheme monokai_soda]]
  end
}
