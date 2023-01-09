-- bootstrap packer
local fn = vim.fn
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require('utils')
require('settings')
require('keymaps')

return packer.startup({function(use)
  -- packer self-update
  use { 'wbthomason/packer.nvim' }

  local configs = {
    -- speed up nvim load time
    'impatient',

    -- icons
    -- 'circles',

    -- appearance
    'devicons',
    -- 'ccc',
    -- 'hexokinase',
    -- 'galaxyline',
    -- 'feline',
    -- 'indent_blankline',

    -- colorschemes
    -- 'nightfox',
    -- 'sonokai',
    -- 'nord',
    -- 'material',
    -- 'tokyo_night',
    -- 'seoul256',
    -- 'github_theme',
    -- 'lighthaus',
    -- 'onedark',
    -- 'zenbones',
    -- 'darkplus',
    'oh_lucy',
    -- 'iceberg',
    -- 'noctis',
    -- 'tundra',
    -- 'kanagawa',
    -- 'monokai',
    -- 'codeschool',
    -- 'minimal',
    -- 'no_clown_fiesta',
    'lualine',

    -- syntax
    'treesitter',
    -- 'vim_sleuth',
    'indent_o_matic',

    -- typing
    -- 'nvim_autopairs',
    'visual_multi',
    -- 'comment',
    'nvim_comment',
    'repeat',
    'surround',
    'unimpaired',
    --'ultisnips',
    -- 'snippy',
    'wordmotion',
    'rsi', -- alt / backspace support
    -- 'yoink',
    -- 'yanky',
    'neoclip',
    'wilder',
    'doge',
    'auto_hls',

    -- file navigation
    -- 'nvim_tree',
    'neo_tree',
    -- 'fzf',
    'telescope',

    -- buffer navigation
    'lightspeed',
    'bfq',
    -- 'slash',

    -- help
    'which_key',
    -- 'noice',

    -- language specific
    'package_info', -- package.json helper
    'import_cost', -- js import package sizes
    'glsl',

    -- lsp
    -- 'coq',
    -- 'trouble',
    'lsp_colors',
    -- 'cmp',
    -- 'navigator',
    'lsp',
    'diagnostic_window',

    -- linting / testing
    'whitespace',
    -- 'vim_test',
    'neotest',
    -- 'null_ls_config',

    -- fun
    -- 'dashboard',
    'alpha',

    -- system
    -- 'floaterm',
    'fterm',
    'hologram',
    'undotree',

    -- git
    'gitsigns',
    'fugitive',
    -- 'flog',
    'gv',

    -- debuggers
    -- 'dap',

    -- project
    -- 'neorg'
  }

  for i, name in ipairs(configs) do
    require('plugins/' .. name).init(use)
  end

  -- auto compile packer when config is changed
  vim.cmd([[autocmd BufWritePost plugins.lua source <afile> | PackerCompile]])
end,
config = {
  git = {
    subcommands = {
      update = 'pull --ff-only --progress --rebase=false'
    }
  }
}})
