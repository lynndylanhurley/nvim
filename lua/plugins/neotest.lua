local module = {}

function module.init(use)
  use {
    "nvim-neotest/neotest",
    requires = {
      "nvim-lua/plenary.nvim",
      "rouge8/neotest-rust",
      "marilari88/neotest-vitest",
      "nvim-treesitter/nvim-treesitter",
      'mfussenegger/nvim-dap',
      "rcarriga/nvim-dap-ui",
      { "mxsdev/nvim-dap-vscode-js",
        requires = {
          "microsoft/vscode-js-debug",
          opt = true,
          run = "npm install --legacy-peer-deps && npm run compile"
        }
      },
      "antoinemadec/FixCursorHold.nvim",
    },
    config = function()
      neotest = require('neotest')

      dap = require("dap")
      dap_ui = require("dapui")

      local debugger_path = vim.fn.stdpath('data')..'/site/pack/packer/opt/vscode-js-debug'

      require("dap-vscode-js").setup({
        -- node_path = "node", -- Path of node executable. Defaults to $NODE_PATH, and then "node"
        debugger_path = debugger_path, -- Path to vscode-js-debug installation.
        -- debugger_cmd = { "js-debug-adapter" }, -- Command to use to launch the debug server. Takes precedence over `node_path` and `debugger_path`.
        adapters = { 'pwa-node', 'pwa-chrome', 'pwa-msedge', 'node-terminal', 'pwa-extensionHost' }, -- which adapters to register in nvim-dap
      })


      -- for _, language in ipairs({ "typescript", "javascript" }) do
      --   dap.configurations[language] = {
      --     {
      --       type = "pwa-node",
      --       request = "launch",
      --       name = "Launch file",
      --       program = "${file}",
      --       cwd = "${workspaceFolder}",
      --     },
      --     {
      --       type = "pwa-node",
      --       request = "attach",
      --       name = "Attach",
      --       processId = require'dap.utils'.pick_process,
      --       cwd = "${workspaceFolder}",
      --     }
      --   }
      -- end

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

      debug_nearest = function()
        neotest.run.run({ strategy = 'dap' })
      end

      -- run tests
      vim.keymap.set('n', '<leader>rn', nearest, {})
      vim.keymap.set('n', '<leader>ro', neotest.output.open, {})
      vim.keymap.set('n', '<leader>rd', debug_nearest, {})
      vim.keymap.set('n', '<leader>rf', current_file, {})

      -- set breakpoints
      vim.keymap.set('n', '<leader>db', dap.toggle_breakpoint, {})
      vim.keymap.set('n', '<leader>dn', dap.step_over, {})
      vim.keymap.set('n', '<leader>di', dap.step_into, {})
      vim.keymap.set('n', '<leader>dx', dap.close, {})

      -- toggle dap ui
      vim.keymap.set('n', '<leader>dd', dap_ui.toggle, {})

      -- auto open dap interface when initiated
      dap.listeners.after.event_initialized["dapui_config"] = function()
        dap_ui.open()
      end
      dap.listeners.before.event_terminated["dapui_config"] = function()
        dap_ui.close()
      end
      dap.listeners.before.event_exited["dapui_config"] = function()
        dap_ui.close()
      end
    end
  }
end

return module
