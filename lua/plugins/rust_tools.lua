return {
  "simrat39/rust-tools.nvim",
  dependencies = {
    "neovim/nvim-lspconfig",
    "nvim-lua/plenary.nvim",
    "mfussenegger/nvim-dap",
    "rcarriga/nvim-dap-ui",
    "folke/neodev.nvim"
  },
  ft = "rust",
  opts = function()
    local extension_path = vim.env.HOME .. "/.local/share/nvim/mason/packages/codelldb/extension/"
    local codelldb_path = extension_path .. "adapter/codelldb"
    local liblldb_path = extension_path .. "lldb/lib/liblldb.dylib"
    return {
      dap = { adapter = require("rust-tools.dap").get_codelldb_adapter(codelldb_path, liblldb_path) },
      tools = {
        hover_actions = {
          auto_focus = true
        }
      }
    }
  end,
  keys = {
    { "gh", "<cmd>RustHoverActions<CR>", desc = 'RustHoverActions' },

    { '<leader>dd', "<cmd>DapContinue<CR>", desc = "DAPContinue" },
    { '<leader>dl', "<cmd>DapStepOver<CR>", desc = "DAPStepOver" },
    { '<leader>di', "<cmd>DapStepInto<CR>", desc = "DAPStepInto" },
    { '<leader>dh', "<cmd>DapStepOut<CR>", desc = "DAPStepOut" },

    { '<leader>db', "<cmd>DapToggleBreakpoint<CR>", desc = "DAPToggleBreakpoint" },
    { '<leader>dc', "<cmd>DapSetBreakpoint<CR>", desc = "DAPSetBreakpoint" },
    { '<leader>dl', "<cmd>DapSetBreakpoint<CR>", desc = "DAPSetBreakpoint" },
  }
}
