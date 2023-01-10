return {
  "projekt0n/circles.nvim",
  dependencies = {
    { 'kyazdani42/nvim-web-devicons' },
    { 'kyazdani42/nvim-tree.lua' }
  },
  config = function()
    require("circles").setup()
  end
}
