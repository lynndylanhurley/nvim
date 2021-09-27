local module = {}

function module.init(use)
  use {
    'sainnhe/sonokai',
    config = function()
      vim.g.sonokai_style = 'atlantis'
      vim.cmd('colorscheme sonokai')
    end
  }
end

return module
