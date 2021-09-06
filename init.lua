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
    -- colorschemes
    'nightfox',

    -- appearance
    'devicons',
    'hexokinase',
    'galaxyline',
    'indent_blankline',

    -- syntax
    'treesitter',
    'vim_sleuth',

    -- typing
    'nvim_autopairs',
    'visual_multi',
    'nvim_comment',
    'repeat',
    'surround',
    'unimpaired',
    --'ultisnips',
    'snippy',
    'wordmotion',
    'rsi', -- alt / backspace support
    -- 'yoink', -- TODO: fix this one

    -- file navigation
    'nvim_tree',
    -- 'fzf',
    'telescope',

    -- buffer navigation
    'lightspeed',
    'bfq',
    'slash',

    -- help
    'which_key',

    -- lsp
    'trouble',
    'lsp_colors',
    'lsp_config',

    -- linting / testing
    'whitespace',
    'vim_test',
    'null_ls_config',

    -- fun
    'dashboard',

    -- system
    'floaterm',
    -- 'fterm',

    -- git
    'gitsigns',
    'fugitive',
    -- 'flog',
    'gv'
  }

  for i, name in ipairs(configs) do
    require('plugins/' .. name).init(use)
  end

  -- auto compile packer when config is changed
  vim.cmd([[autocmd BufWritePost plugins.lua source <afile> | PackerCompile]])
end)
