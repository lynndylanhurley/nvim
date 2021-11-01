-- bootstrap packer
local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({'git', 'clone', 'https://github.com/wbthomason/packer.nvim', install_path})
  vim.cmd 'packadd packer.nvim'
end

require('utils')
require('settings')
require('keymaps')

return require('packer').startup(function(use)
  -- packer self-update
  use { 'wbthomason/packer.nvim' }

  local configs = {
    -- speed up nvim load time
    'impatient',

    -- icons
    -- 'circles',

    -- appearance
    'devicons',
    'hexokinase',
    -- 'galaxyline',
    -- 'feline',
    'indent_blankline',

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
    'darkplus',
    -- 'monokai',
    'lualine',

    -- syntax
    'treesitter',
    'vim_sleuth',

    -- typing
    'nvim_autopairs',
    'visual_multi',
    -- 'comment',
    'nvim_comment',
    'repeat',
    'surround',
    'unimpaired',
    --'ultisnips',
    'snippy',
    'wordmotion',
    'rsi', -- alt / backspace support
    'yoink',
    'wilder',

    -- file navigation
    'nvim_tree',
    'fzf',
    -- 'telescope',

    -- buffer navigation
    'lightspeed',
    'bfq',
    'slash',

    -- help
    'which_key',

    -- language specific
    'package_info', -- package.json helper

    -- lsp
    -- 'coq',
    'trouble',
    'lsp_colors',
    'cmp',
    'navigator',
    -- 'lsp',

    -- linting / testing
    'whitespace',
    'vim_test',
    'null_ls_config',

    -- fun
    -- 'dashboard',
    'alpha',

    -- system
    -- 'floaterm',
    'fterm',
    'hologram',

    -- git
    'gitsigns',
    'fugitive',
    -- 'flog',
    'gv',
  }

  for i, name in ipairs(configs) do
    require('plugins/' .. name).init(use)
  end

  -- auto compile packer when config is changed
  vim.cmd([[autocmd BufWritePost plugins.lua source <afile> | PackerCompile]])
end)
