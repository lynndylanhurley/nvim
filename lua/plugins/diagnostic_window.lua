local module = {}

function module.init(use)
  use {
    "cseickel/diagnostic-window.nvim",
    requires = { "MunifTanjim/nui.nvim" },
    config = function()
      map('', '<leader>x', ':DiagWindowShow<CR>')
    end
  }
end

return module
