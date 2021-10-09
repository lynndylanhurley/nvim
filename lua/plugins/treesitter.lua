local module = {}

function module.init(use)
  use {
    'nvim-treesitter/nvim-treesitter',
    requires = {
      { 'JoosepAlviste/nvim-ts-context-commentstring' }
    },
    run = ':TSUpdate',
    config = function()
      require'nvim-treesitter.configs'.setup {
        ensure_installed = "maintained",
        context_commentstring = {
          enable = true
        },
        highlight = {
          use_languagetree = true,
          enable = true
        },
        indent = {
          enable = true
        },
        refactor = {
          highlight_definitions = { enable = false },
          highlight_current_scope = { enable = false }
        },
      }
    end
  }
end

return module
