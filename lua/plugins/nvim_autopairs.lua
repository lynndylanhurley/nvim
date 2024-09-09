return {
  'windwp/nvim-autopairs',
  config = function()
    -- auto-close parens + brackets
    require('nvim-autopairs').setup({
      disable_filetype = { "TelescopePrompt" , "guihua", "guihua_rust", "clap_input" },
      enable_afterquote = false,
      -- enable_moveright = false,
      check_ts = true
    })
  end
}
