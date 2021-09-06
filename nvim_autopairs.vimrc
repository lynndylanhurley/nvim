lua << EOF
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

local ts_conds = require('nvim-autopairs.ts-conds')

-- npairs.setup({})

-- require("nvim-autopairs.completion.compe").setup({
--   map_cr = true, --  map <CR> on insert mode
--   map_complete = true, -- it will auto insert `(` after select function or method item
--   auto_select = true
-- })

EOF
