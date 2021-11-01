local module = {}

function module.init(use)
  use {
    'marko-cerovac/material.nvim',
    config = function()
      vim.g.material_style = "oceanic"
      require('material').setup()
      vim.cmd[[colorscheme material]]
    end
  }
end

return module
