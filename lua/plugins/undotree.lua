local module = {}

function module.init(use)
  use {
    "mbbill/undotree",
    config = function()
      local opts = { noremap = true, silent = true }
      map('n', '<leader>u', ":UndotreeToggle<CR>", opts)
    end
  }
end

return module
