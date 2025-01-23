return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    dependencies = {
      {
        "s1n7ax/nvim-window-picker",
        version = "2.*",
        config = function()
          require("window-picker").setup({
            filter_rules = {
              include_current_win = false,
              autoselect_one = true,
              -- filter using buffer options
              bo = {
                -- if the file type is one of following, the window will be ignored
                filetype = { "neo-tree", "neo-tree-popup", "notify" },
                -- if the buffer type is one of following, the window will be ignored
                buftype = { "terminal", "quickfix" },
              },
            },
          })
        end,
      },
    },
    opts = {
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
          ["<cr>"] = "open_with_window_picker",
        },
      },
    },
  },
}
