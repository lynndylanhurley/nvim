local module = {}

function module.init(use)
  use {
    'kyazdani42/nvim-tree.lua',
    requires = { 'kyazdani42/nvim-web-devicons' },
    config = function()
      require'nvim-tree'.setup {
        open_on_setup = true,
        auto_close = false,
        ignore_list = { '.DS_Store' },
        view = {
          mappings = {
            list = {
              { key = "o", cb = ":lua NvimTreeOSOpen()<cr>" }
            }
          }
        }
      }

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

      map('', '<C-a>', ':NvimTreeToggle<CR>')
    end
  }
end

return module

