local module = {}

function module.init(use)
  use {
    "cseickel/diagnostic-window.nvim",
    requires = { "MunifTanjim/nui.nvim" },
    config = function()
      local o = { silent = true }
      vim.keymap.set("n", "gx", "<cmd>DiagWindowShow<CR>", o)
    end
  }
end

return module
