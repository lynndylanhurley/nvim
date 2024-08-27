return {
  "projekt0n/circles.nvim",
  dependencies = {
    { 'nvim-tree/nvim-web-devicons' },
    { 'nvim-tree/nvim-tree.lua' }
  },
  config = function()
    require("circles").setup()
  end
}
