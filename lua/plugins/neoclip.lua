local module = {}

function module.init(use)
  use {
    "AckslD/nvim-neoclip.lua",
    config = function()
      require('telescope').load_extension('neoclip')
      require('neoclip').setup()
      map('', '<c-p>', '<cmd>Telescope neoclip<cr>')
    end
  }
end

return module
