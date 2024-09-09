return {
  'dcampos/nvim-snippy',
  lazy = false,
  dependencies = {
    -- code snippets
    'honza/vim-snippets',
    'dcampos/cmp-snippy',
    'honza/vim-snippets',
  },
  config = function()
    local snippy = require('snippy');

    -- snippets
    snippy.setup({
      mappings = {
        is = {
          ["<Tab>"] = "expand_or_advance",
          ["<S-Tab>"] = "previous",
        },
        nx = {
          ["<leader>x"] = "cut_text",
        },
      },
    })
  end
}
