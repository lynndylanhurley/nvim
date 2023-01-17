return {
  "nvim-neotest/neotest",
  dependencies = {
    "kevinhwang91/nvim-bqf",
    "nvim-lua/plenary.nvim",
    "rouge8/neotest-rust",
    "marilari88/neotest-vitest",
    "nvim-treesitter/nvim-treesitter",
    'mfussenegger/nvim-dap',
    "rcarriga/nvim-dap-ui",
    "antoinemadec/FixCursorHold.nvim",
  },
  config = function()
    neotest = require('neotest')

    dap = require("dap")
    dap_ui = require("dapui")

    neotest.setup({
      adapters = {
        require("neotest-rust"),
        require("neotest-vitest"),
      }
    })

    dap_ui.setup()

    nearest = function()
      neotest.run.run()
    end

    current_file = function()
      neotest.run.run(vim.fn.expand('%'))
    end
  end,
  keys = {
    { '<leader>rn',
      function()
        require('neotest').run.run()
      end,
      desc = 'NeotestNearest' },
    { '<leader>ro',
      function()
        require('neotest').run.run(vim.fn.expand('%'))
      end,
      desc = 'NeotestCurrentFile' },
    { '<leader>ro',
      function()
        require('neotest').output.open()
      end, desc = 'NeotestOutputOpen' }
  }
}
