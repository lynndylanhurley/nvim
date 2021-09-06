local module = {}

function module.init(use)
  use {
    'kyazdani42/nvim-tree.lua',
    requires = { 'kyazdani42/nvim-web-devicons' },
    config = function()
      vim.g.nvim_tree_auto_open = 1
      vim.g.nvim_tree_auto_close = 1
      vim.g.nvim_tree_ignore = { '.DS_Store' }
      vim.g.nvim_tree_show_icons = {
        git = 0,
        folders = 1,
        files = 1,
      }

      local tree_cb = require'nvim-tree.config'.nvim_tree_callback

      function NvimTreeOSOpen()
        local lib = require "nvim-tree.lib"
        local node = lib.get_node_at_cursor()
        if node then
          vim.fn.jobstart("open '" .. node.absolute_path .. "' &", {detach = true})
        end
      end

      vim.g.nvim_tree_bindings = {
        { key = "o", cb = ":lua NvimTreeOSOpen()<cr>" }
      }

      map('', '<C-a>', ':NvimTreeToggle<CR>')
    end
  }
end

return module

