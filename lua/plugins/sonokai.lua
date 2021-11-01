local module = {}

function module.init(use)
  use {
    'sainnhe/sonokai',
    config = function()
      vim.g.sonokai_style = 'shusia'
      vim.cmd('colorscheme sonokai')
    end
  }
end

return module
