return {
  "rcarriga/nvim-dap-ui",
  dependencies = {
    { 'mfussenegger/nvim-dap' },
    { 'Pocco81/DAPInstall.nvim' },
  },
  config = function()
    local dap_install = require("dap-install")
    local dbg_list = require("dap-install.api.debuggers").get_installed_debuggers()
    local dap_ui = require('dapui');

    -- set debugger install path
    dap_install.setup({
      installation_path = vim.fn.stdpath("data") .. "/dapinstall/",
    })

    -- install all available debuggers
    for _, debugger in ipairs(dbg_list) do
      dap_install.config(debugger)
    end

    dap_ui.setup()


    local opts = { noremap = true, silent = true }

    map('n', '<leader>dd', ":lua require'dap'.continue()<CR>", opts)
    map('n', '<leader>dl', ":lua require'dap'.step_over()<CR>", opts)
    map('n', '<leader>di', ":lua require'dap'.step_into()<CR>", opts)
    map('n', '<leader>dh', ":lua require'dap'.step_out()<CR>", opts)

    map('n', '<leader>db', ":lua require'dap'.toggle_breakpoint()<CR>", opts)
    map('n', '<leader>dc', ":lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>", opts)
    map('n', '<leader>dl', ":lua require'dap'.set_breakpoint(nil, nil, vim.fn.input('Log point message: '))<CR>", opts)
    map('n', '<leader>dr', ":lua require'dap'.repl.open()<CR>", opts)
  end
}
