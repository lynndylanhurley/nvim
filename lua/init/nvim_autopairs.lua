local module = {}

function module.init(use)
  use {
    'windwp/nvim-autopairs',
    config = function()
      local remap = vim.api.nvim_set_keymap
      local npairs = require('nvim-autopairs')

      -- config to set pairs using treesitter
      npairs.setup({
        check_ts = true,
        disable_filetype = { "TelescopePrompt" , "vim" }
      })

      require('nvim-treesitter.configs').setup {
        autopairs = {enable = true}
      }

      require("nvim-autopairs.completion.cmp").setup({
        map_cr = true, --  map <CR> on insert mode
        map_complete = true, -- it will auto insert `(` after select function or method item
        auto_select = true -- automatically select the first item
      })

      local ts_conds = require('nvim-autopairs.ts-conds')
    end
  }
end

return module
