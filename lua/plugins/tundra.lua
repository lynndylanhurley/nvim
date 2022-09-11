local module = {}

function module.init(use)
  use {
    'sam4llis/nvim-tundra',
    config = function()
      vim.opt.background = 'dark'
      vim.cmd('colorscheme tundra')
    end
  }
end

return module

