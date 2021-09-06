" treesitter
lua <<EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = "maintained",
  highlight = {
    use_languagetree = true,
    enable = true
  },
  indent = {
    enable = true
  },
  autotag = {
    enable = false,
  },
  refactor = {
    highlight_definitions = { enable = false },
    highlight_current_scope = { enable = false }
  },
}
EOF
