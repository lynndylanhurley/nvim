local module = {}

function module.init(use)
  use {
    'adisen99/codeschool.nvim',
    requires = { "rktjmp/lush.nvim" },
    config = function()
      vim.opt.background = 'dark'
      vim.cmd('colorscheme codeschool')
    end
  }
end

return module
