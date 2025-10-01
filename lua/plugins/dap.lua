local lazy_dir = vim.fn.stdpath("data") .. "/lazy"

return {
  "mfussenegger/nvim-dap",
  dependencies = {
    { "rcarriga/nvim-dap-ui" },
    { "mxsdev/nvim-dap-vscode-js" },
    -- {
    --   "microsoft/vscode-js-debug",
    --   build = "npm install --legacy-peer-deps && npx gulp vsDebugServerBundle && mv dist out",
    -- },
  },
  keys = {
    -- Snippet
  },

  config = function()
    -- require("dap-vscode-js").setup({
    --   debugger_path = vim.fn.stdpath("data") .. "/lazy/vscode-js-debug",
    --   adapters = { "pwa-node", "pwa-chrome", "pwa-msedge", "node-terminal", "pwa-extensionHost" },
    -- })

    local dap = require("dap")

    -- language config
    for _, language in ipairs({ "typescript", "javascript" }) do
      dap.configurations[language] = {
        {
          type = "pwa-node",
          request = "launch",
          name = "Debug Jest Tests",
          -- trace = true, -- include debugger info
          runtimeExecutable = "node",
          runtimeArgs = {
            "./node_modules/jest/bin/jest.js",
            "--runInBand",
            "${file}",
          },
          rootPath = "${workspaceFolder}",
          cwd = "${workspaceFolder}",
          console = "integratedTerminal",
          internalConsoleOptions = "neverOpen",
          port = 8123,
        },
      }
    end
  end,
}
