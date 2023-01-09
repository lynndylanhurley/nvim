local module = {}

function module.init(use)
  use {
    'cocopon/iceberg.vim',
    config = function()
      vim.cmd('colorscheme iceberg')
    end
  }
end

return module
