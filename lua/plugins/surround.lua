local module = {}

function module.init(use)
  use {
    'tpope/vim-surround',
    config = function()
      vim.g.surround_indent = 1
    end
  }
end

return module
