return {
  'nvim-treesitter/nvim-treesitter',
  lazy = false,
  version = nil,
  -- build = ':TSUpdate',
  config = function()
    require'nvim-treesitter.configs'.setup {
      ensure_installed = "all",
      ignore_install = { "phpdoc" },
      highlight = {
        use_languagetree = true,
        enable = true,
        disable = function(lang, buf)
          local max_filesize = 100 * 1024 -- 100 KB
          local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
          if ok and stats and stats.size > max_filesize then
            return true
          end
        end,
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
