return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
    {
      -- only needed if you want to use the commands with "_with_window_picker" suffix
      's1n7ax/nvim-window-picker',
      tag = "v1.5",
      config = function()
        require('window-picker').setup({
          autoselect_one = true,
          include_current = false,
          filter_rules = {
            -- filter using buffer options
            bo = {
              -- if the file type is one of following, the window will be ignored
              filetype = {
                'neo-tree', "neo-tree-popup", "notify"
              },

              -- if the buffer type is one of following, the window will be ignored
              buftype = { 'terminal', 'quickfix' }
            }
          },
          other_win_hl_color = '#e35e4f'
        })
      end
    }
  },
  config = function()
    vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])
    require("neo-tree").setup({
      filesystem = {
        window = {
          width = 30,
          mappings = {
            ["o"] = "system_open",
          },
        },
        commands = {
          system_open = function(state)
            local node = state.tree:get_node()
            local path = node:get_id()
            -- macOs: open file in default application in the background.
            -- Probably you need to adapt the Linux recipe for manage path with spaces. I don't have a mac to try.
            vim.api.nvim_command("silent !open -g " .. path)
          end,
        },
      },
      window = {
        mappings = {
          ["/"] = "none",
          ["z"] = "none",
          ["<cr>"] = "open_with_window_picker"
        }
      }
    })
  end,
  keys = {
    { '<C-a>', ':Neotree toggle<cr>', desc = "NeoTree" }
  }
}
