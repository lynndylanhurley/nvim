local module = {}

function module.init(use)
  use {
    'nvim-telescope/telescope.nvim',
    requires = {
      { 'nvim-lua/plenary.nvim' },
      { 'kkharji/sqlite.lua', module = 'sqlite' },
    },
    config = function()

      require('telescope').setup {
        defaults = {
          sorting_strategy = "ascending",
          layout_config = {
            prompt_position = "top"
          }
        }
      }

      require('neoclip').setup({
        enable_persistent_history = true,
        keys = {
          telescope = {
            i = {
              select = '<cr>',
              paste = '<nop>',
              paste_behind = false,
              replay = '<c-q>', -- replay a macro
              delete = '<c-d>', -- delete an entry
              custom = {},
            },
            n = {
              select = '<cr>',
              paste = '<nop>',
              paste_behind = false,
              replay = 'q',
              delete = 'd',
              custom = {},
            },
          },
        }
      })

      local builtin = require('telescope.builtin')
      -- local theme = {
      --   results_title = "false",
      --   sorting_strategy = "ascending",
      --   layout_config = {
      --     prompt_position = "top"
      --   }
      -- }

      vim.keymap.set('n', '<leader>t', builtin.find_files, {})
      vim.keymap.set('n', '<leader>/', builtin.live_grep, {})
      vim.keymap.set('n', '<leader>b', builtin.buffers, {})
      vim.keymap.set('n', '<c-p>', require('neoclip.fzf'), {})
    end
  }
end

return module
