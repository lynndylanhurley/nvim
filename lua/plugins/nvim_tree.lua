return {
  'kyazdani42/nvim-tree.lua',
  dependencies = { 'kyazdani42/nvim-web-devicons' },
  config = function()
    require'nvim-tree'.setup {
      open_on_setup = false,
      git = {
        ignore = false
      },
      view = {
        mappings = {
          list = {
            { key = "o", cb = ":lua NvimTreeOSOpen()<cr>" }
          }
        }
      },
      renderer = {
        icons = {
          show = {
            git = false,
            folder = true,
            file = true,
          }
        }
      }
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
