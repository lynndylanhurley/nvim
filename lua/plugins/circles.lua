local module = {}

function module.init(use)
  use {
    "projekt0n/circles.nvim",
    requires = {
      { 'kyazdani42/nvim-web-devicons' },
      { 'kyazdani42/nvim-tree.lua' }
    },
    config = function()
      require("circles").setup()
    end
  }
end

return module
