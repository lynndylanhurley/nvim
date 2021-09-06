-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/Users/lynn/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/Users/lynn/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/Users/lynn/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/Users/lynn/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/lynn/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["cmp-buffer"] = {
    loaded = true,
    path = "/Users/lynn/.local/share/nvim/site/pack/packer/start/cmp-buffer"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/Users/lynn/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp"
  },
  ["cmp-nvim-lua"] = {
    loaded = true,
    path = "/Users/lynn/.local/share/nvim/site/pack/packer/start/cmp-nvim-lua"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/Users/lynn/.local/share/nvim/site/pack/packer/start/cmp-path"
  },
  ["cmp-snippy"] = {
    loaded = true,
    path = "/Users/lynn/.local/share/nvim/site/pack/packer/start/cmp-snippy"
  },
  ["dashboard-nvim"] = {
    config = { "\27LJ\2\nã\6\0\0\2\0\n\0\0176\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\1\0'\1\5\0=\1\4\0006\0\0\0009\0\1\0005\1\a\0=\1\6\0006\0\0\0009\0\1\0005\1\t\0=\1\b\0K\0\1\0\1\18\0\0&                                 &                --      --       &              .:\"  | .:'' |      &            --  ___   ___  -     &          /:.  /  .\\ /.  \\ .\\    &         |:|. ;\\___/O\\___/  :|   &         |:|. |  `__|__`  | .|   &         |:|.  \\_,     ,_/  /    &          \\______       |__/     &           |:.           \\       &          /.:,|  |        \\      &         /.:,.|  |         \\     &         |::.. \\_;_\\-;       |   &   _____|::..    .::|       |    &  /   ----,     .::/__,    /__,  &  \\_______|,...____;_;_|../_;_|  &                                 \28dashboard_custom_header\1\3\0\0\rstartify\14dashboard\29nvim_tree_auto_ignore_ft\6,\14mapleader\bfzf dashboard_default_executive\6g\bvim\0" },
    loaded = true,
    path = "/Users/lynn/.local/share/nvim/site/pack/packer/start/dashboard-nvim"
  },
  ["galaxyline.nvim"] = {
    config = { "\27LJ\2\nÕ\3\0\0\6\1$\0J5\0\1\0-\1\0\0009\1\0\1=\1\2\0-\1\0\0009\1\3\1=\1\4\0-\1\0\0009\1\5\1=\1\6\0-\1\0\0009\1\5\1=\1\a\0-\1\0\0009\1\5\1=\1\b\0-\1\0\0009\1\t\1=\1\n\0-\1\0\0009\1\0\1=\1\v\0-\1\0\0009\1\f\1=\1\r\0-\1\0\0009\1\f\1=\1\14\0-\1\0\0009\1\f\1=\1\15\0-\1\0\0009\1\16\1=\1\17\0-\1\0\0009\1\18\1=\1\19\0-\1\0\0009\1\18\1=\1\20\0-\1\0\0009\1\0\1=\1\21\0-\1\0\0009\1\0\1=\1\22\0-\1\0\0009\1\23\1=\1\24\0-\1\0\0009\1\23\1=\1\25\0-\1\0\0009\1\23\1=\1\26\0-\1\0\0009\1\0\1=\1\27\0-\1\0\0009\1\0\1=\1\28\0006\1\29\0009\1\30\0019\1\31\1'\3 \0006\4\29\0009\4!\0049\4\"\4B\4\1\0028\4\4\0&\3\4\3B\1\2\1'\1#\0L\1\2\0\1¿\t‚ñä \tmode\afn\27hi GalaxyViMode guifg=\17nvim_command\bapi\bvim\6t\6!\ar?\arm\6r\tcyan\ace\acv\aRv\6R\bred\aic\vyellow\6\19\6S\6s\vorange\ano\6c\fmagenta\6V\6\22\6v\vpurple\6i\ngreen\6n\1\0\0\tblue\20\0\0\1\0\1\0\2'\0\0\0L\0\2\0\t Óú•T\0\0\2\0\4\0\v5\0\0\0006\1\1\0009\1\2\0019\1\3\0018\1\1\0\15\0\1\0X\2\2Ä+\1\1\0L\1\2\0+\1\2\0L\1\2\0\rfiletype\abo\bvim\1\0\2\6 \2\14dashboard\2a\0\0\5\0\6\0\n'\0\0\0006\1\1\0009\1\2\0019\1\3\1)\3\0\0'\4\4\0B\1\3\2'\2\5\0&\0\2\0L\0\2\0\6 \15shiftwidth\24nvim_buf_get_option\bapi\bvim\rSpaces: \17\0\0\1\0\1\0\2'\0\0\0L\0\2\0\6 ’\21\1\0\n\0h\0≤\0026\0\0\0'\2\1\0B\0\2\0025\1\2\0006\2\0\0'\4\3\0B\2\2\0029\3\4\0005\4\6\0=\4\5\0009\4\a\0035\5\14\0005\6\t\0003\a\b\0=\a\n\0064\a\3\0009\b\v\1>\b\1\a9\b\f\1>\b\2\a=\a\r\6=\6\15\5>\5\1\0046\4\16\0006\6\17\0009\6\18\0069\6\19\6)\b\0\0'\t\20\0B\6\3\0A\4\0\0016\4\17\0009\4\18\0049\4\19\4)\6\0\0'\a\20\0B\4\3\0019\4\a\0035\5\28\0005\6\22\0003\a\21\0=\a\n\0069\a\23\2=\a\24\0065\a\25\0009\b\f\1>\b\2\a=\a\26\0064\a\3\0009\b\27\1>\b\1\a9\b\f\1>\b\2\a=\a\r\6=\6\29\5>\5\2\0049\4\a\0035\5!\0005\6\30\0009\a\31\2=\a\24\0064\a\3\0009\b \1>\b\1\a9\b\f\1>\b\2\a=\a\r\6=\6\"\5>\5\3\0049\4\a\0035\5&\0005\6#\0009\a$\2=\a\24\0064\a\3\0009\b%\1>\b\1\a9\b\f\1>\b\2\a=\a\r\6=\6'\5>\5\4\0049\4\a\0035\5*\0005\6(\0009\a$\2=\a\24\0064\a\3\0009\b)\1>\b\1\a9\b\f\1>\b\2\a=\a\r\6=\6+\5>\5\5\0049\4\a\0035\5-\0005\6,\0009\a$\2=\a\24\0064\a\3\0009\b\v\1>\b\1\a9\b\f\1>\b\2\a=\a\r\6=\6.\5>\5\6\0049\4/\0035\0052\0005\0060\0004\a\3\0009\b1\1>\b\1\a9\b\f\1>\b\2\a=\a\r\6=\0063\5>\5\1\0049\4/\0035\0055\0005\0064\0004\a\3\0009\b\27\1>\b\1\a9\b\f\1>\b\2\a=\a\r\6=\0066\5>\5\2\0049\4/\0035\0059\0005\0067\0004\a\3\0009\b8\1>\b\1\a9\b\f\1>\b\2\a=\a\r\6=\6:\5>\5\3\0049\4/\0035\5=\0005\6;\0004\a\3\0009\b<\1>\b\1\a9\b\f\1>\b\2\a=\a\r\6=\6>\5>\5\4\0049\4/\0035\5B\0005\6?\0003\a@\0=\a\24\0064\a\3\0009\bA\1>\b\1\a9\b\f\1>\b\2\a=\a\r\6=\6C\5>\5\5\0049\4/\0035\5F\0005\6D\0005\aE\0009\b\f\1>\b\2\a=\a\26\0064\a\3\0009\bA\1>\b\1\a9\b\f\1>\b\2\a=\a\r\6=\6G\5>\5\6\0049\4/\0035\5J\0005\6H\0005\aI\0009\b\f\1>\b\2\a=\a\26\0064\a\3\0009\bA\1>\b\1\a9\b\f\1>\b\2\a=\a\r\6=\6K\5>\5\a\0049\4/\0035\5O\0005\6M\0003\aL\0=\a\n\0069\a$\2=\a\24\0065\aN\0009\b\f\1>\b\2\a=\a\26\0064\a\3\0009\bA\1>\b\1\a9\b\f\1>\b\2\a=\a\r\6=\6P\5>\5\b\0049\4/\0035\5S\0005\6Q\0009\a$\2=\a\24\0065\aR\0009\b\f\1>\b\2\a=\a\26\0064\a\3\0009\bA\1>\b\1\a9\b\f\1>\b\2\a=\a\r\6=\6T\5>\5\t\0049\4/\0035\5W\0005\6U\0009\a$\2=\a\24\0065\aV\0009\b\f\1>\b\2\a=\a\26\0064\a\3\0009\bA\1>\b\1\a9\b\f\1>\b\2\a=\a\r\6=\6X\5>\5\n\0049\4/\0035\5\\\0005\6Z\0003\aY\0=\a\n\0065\a[\0009\b\f\1>\b\2\a=\a\26\0064\a\3\0009\b\27\1>\b\1\a9\b\f\1>\b\2\a=\a\r\6=\6]\5>\5\v\0049\4^\0035\5a\0005\6_\0005\a`\0009\b\f\1>\b\2\a=\a\26\0064\a\3\0009\bA\1>\b\1\a9\b\f\1>\b\2\a=\a\r\6=\6T\5>\5\1\0049\4^\0035\5c\0005\6b\0009\a\31\2=\a\24\0064\a\3\0009\bA\1>\b\1\a9\b\f\1>\b\2\a=\a\r\6=\6\"\5>\5\2\0049\4d\0035\5f\0005\6e\0004\a\3\0009\bA\1>\b\1\a9\b\f\1>\b\2\a=\a\r\6=\6g\5>\5\1\0042\0\0ÄK\0\1\0\15BufferIcon\1\0\0\1\0\1\rprovider\15BufferIcon\21short_line_right\1\0\0\1\0\1\rprovider\rFilePath\1\0\0\1\2\0\0\tNONE\1\0\2\rprovider\rFileIcon\14separator\6 \20short_line_left\nSpace\1\0\0\1\2\0\0\tNONE\1\0\1\14separator\6 \0\15FileEncode\1\0\0\1\2\0\0\tNONE\1\0\2\14separator\6 \rprovider\15FileEncode\15BufferType\1\0\0\1\2\0\0\tNONE\1\0\2\14separator\6 \rprovider\rFileIcon\fTabstop\1\0\0\1\2\0\0\tNONE\1\0\1\14separator\6 \0\fPerCent\1\0\0\1\2\0\0\tNONE\1\0\2\rprovider\16LinePercent\14separator\6 \rLineInfo\1\0\0\1\2\0\0\tNONE\1\0\2\rprovider\15LineColumn\14separator\a  \18ShowLspClient\1\0\0\14dark_grey\0\1\0\2\rprovider\17GetLspClient\ticon\tÔÇÖ \19DiagnosticInfo\1\0\0\16info_yellow\1\0\2\rprovider\19DiagnosticInfo\ticon\n ÔÅö \19DiagnosticHint\1\0\0\15vivid_blue\1\0\2\rprovider\19DiagnosticHint\ticon\n ÔÅ™ \19DiagnosticWarn\1\0\0\1\0\2\rprovider\19DiagnosticWarn\ticon\n ÔÅ± \20DiagnosticError\1\0\0\14error_red\1\0\2\rprovider\20DiagnosticError\ticon\n ÔÅó \nright\15DiffRemove\1\0\0\1\0\2\rprovider\15DiffRemove\ticon\n ÔÖÜ \17DiffModified\1\0\0\tblue\1\0\2\rprovider\17DiffModified\ticon\t Êü≥\fDiffAdd\1\0\0\ngreen\18hide_in_width\1\0\2\rprovider\fDiffAdd\ticon\n ÔÉæ \14SFileName\1\0\0\tgrey\21buffer_not_empty\1\0\1\rprovider\rFilePath\fGitIcon\1\0\0\vorange\24separator_highlight\1\2\0\0\tNONE\14condition\24check_git_workspace\1\0\1\14separator\6 \0\ats\14getbufvar\afn\bvim\nprint\vViMode\1\0\0\14highlight\abg\bred\rprovider\1\0\0\0\tleft\1\5\0\0\rNvimTree\nvista\tdbui\vpacker\20short_line_list\fsection\25galaxyline.condition\1\0\18\abg\f#111a25\16info_yellow\f#FFD787\14error_red\f#D68787\bred\f#D75F87\16light_green\f#87AF87\15light_blue\f#85ADD4\ngreen\f#5F865F\15vivid_blue\f#ADD4FB\tcyan\f#87D7D7\tblue\f#87AFAF\16dark_yellow\f#D8AF5F\14dark_grey\f#626262\vyellow\f#FFD787\tgrey\f#D0D0D0\fmagenta\f#D16D9E\vpurple\f#D68787\vorange\f#FFD787\18string_orange\f#CE9178\15galaxyline\frequire\0" },
    loaded = true,
    path = "/Users/lynn/.local/share/nvim/site/pack/packer/start/galaxyline.nvim"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\2\n6\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\rgitsigns\frequire\0" },
    loaded = true,
    path = "/Users/lynn/.local/share/nvim/site/pack/packer/start/gitsigns.nvim"
  },
  ["indent-blankline.nvim"] = {
    config = { "\27LJ\2\n≤\1\0\0\4\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0025\3\6\0=\3\a\2B\0\2\1K\0\1\0\21filetype_exclude\1\2\0\0\14dashboard\20buftype_exclude\1\4\0\0\rterminal\vnofile\14dashboard\1\0\1\19use_treesitter\2\nsetup\21indent_blankline\frequire\0" },
    loaded = true,
    path = "/Users/lynn/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim"
  },
  ["lightspeed.nvim"] = {
    config = { "\27LJ\2\nÖ\2\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\a\25grey_out_search_area\2\27highlight_unique_chars\2)jump_on_partial_input_safety_timeout\3ê\3\24jump_to_first_match\2\30full_inclusive_prefix_key\n<c-x>\21limit_ft_matches\3\5+match_only_the_start_of_same_char_seqs\2\nsetup\15lightspeed\frequire\0" },
    loaded = true,
    path = "/Users/lynn/.local/share/nvim/site/pack/packer/start/lightspeed.nvim"
  },
  ["lsp-colors.nvim"] = {
    config = { "\27LJ\2\n8\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\15lsp-colors\frequire\0" },
    loaded = true,
    path = "/Users/lynn/.local/share/nvim/site/pack/packer/start/lsp-colors.nvim"
  },
  ["lsp-trouble.nvim"] = {
    config = { "\27LJ\2\nê\1\0\0\6\0\b\0\r6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\0016\0\3\0'\2\4\0'\3\5\0'\4\6\0005\5\a\0B\0\5\1K\0\1\0\1\0\2\vsilent\2\fnoremap\2\30<cmd>LspTroubleToggle<cr>\15<leader>xx\6n\bmap\nsetup\ftrouble\frequire\0" },
    loaded = true,
    path = "/Users/lynn/.local/share/nvim/site/pack/packer/start/lsp-trouble.nvim"
  },
  ["lsp_signature.nvim"] = {
    loaded = true,
    path = "/Users/lynn/.local/share/nvim/site/pack/packer/start/lsp_signature.nvim"
  },
  ["lspkind-nvim"] = {
    loaded = true,
    path = "/Users/lynn/.local/share/nvim/site/pack/packer/start/lspkind-nvim"
  },
  ["lspsaga.nvim"] = {
    loaded = true,
    path = "/Users/lynn/.local/share/nvim/site/pack/packer/start/lspsaga.nvim"
  },
  neoterm = {
    loaded = true,
    path = "/Users/lynn/.local/share/nvim/site/pack/packer/start/neoterm"
  },
  ["nightfox.nvim"] = {
    config = { "\27LJ\2\n8\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0\25colorscheme nightfox\bcmd\bvim\0" },
    loaded = true,
    path = "/Users/lynn/.local/share/nvim/site/pack/packer/start/nightfox.nvim"
  },
  ["null-ls.nvim"] = {
    config = { "\27LJ\2\n˚\3\0\0\6\0\24\0A6\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\3\0004\4\f\0009\5\4\0009\5\5\0059\5\6\5>\5\1\0049\5\4\0009\5\5\0059\5\a\5>\5\2\0049\5\4\0009\5\5\0059\5\b\5>\5\3\0049\5\4\0009\5\5\0059\5\t\5>\5\4\0049\5\4\0009\5\5\0059\5\n\5>\5\5\0049\5\4\0009\5\5\0059\5\v\5>\5\6\0049\5\4\0009\5\5\0059\5\f\5>\5\a\0049\5\4\0009\5\5\0059\5\r\5>\5\b\0049\5\4\0009\5\5\0059\5\14\5>\5\t\0049\5\4\0009\5\15\0059\5\6\5>\5\n\0049\5\4\0009\5\15\0059\5\16\5>\5\v\4=\4\17\3B\1\2\0016\1\0\0'\3\18\0B\1\2\0029\1\1\0019\1\19\0014\3\0\0B\1\2\0016\1\20\0'\3\21\0'\4\22\0'\5\23\0B\1\4\1K\0\1\0/<cmd>lua vim.lsp.buf.formatting_sync()<cr>\14<leader>f\6n\bmap\nsetup\14lspconfig\fsources\rluacheck\16diagnostics\nshfmt\14sqlformat\trufo\frustfmt\vphpcbf\21nginx_beautifier\15lua_format\14json_tool\reslint_d\15formatting\rbuiltins\1\0\1\ndebug\1\vconfig\fnull-ls\frequire\0" },
    loaded = true,
    path = "/Users/lynn/.local/share/nvim/site/pack/packer/start/null-ls.nvim"
  },
  ["nvim-autopairs"] = {
    config = { "\27LJ\2\nÚ\2\0\0\6\0\16\0\0296\0\0\0009\0\1\0009\0\2\0006\1\3\0'\3\4\0B\1\2\0029\2\5\0015\4\6\0005\5\a\0=\5\b\4B\2\2\0016\2\3\0'\4\t\0B\2\2\0029\2\5\0025\4\v\0005\5\n\0=\5\f\4B\2\2\0016\2\3\0'\4\r\0B\2\2\0029\2\5\0025\4\14\0B\2\2\0016\2\3\0'\4\15\0B\2\2\2K\0\1\0\28nvim-autopairs.ts-conds\1\0\3\vmap_cr\2\16auto_select\2\17map_complete\2\"nvim-autopairs.completion.cmp\14autopairs\1\0\0\1\0\1\venable\2\28nvim-treesitter.configs\21disable_filetype\1\3\0\0\20TelescopePrompt\bvim\1\0\1\rcheck_ts\2\nsetup\19nvim-autopairs\frequire\20nvim_set_keymap\bapi\bvim\0" },
    loaded = true,
    path = "/Users/lynn/.local/share/nvim/site/pack/packer/start/nvim-autopairs"
  },
  ["nvim-bqf"] = {
    loaded = true,
    path = "/Users/lynn/.local/share/nvim/site/pack/packer/start/nvim-bqf"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "/Users/lynn/.local/share/nvim/site/pack/packer/start/nvim-cmp"
  },
  ["nvim-comment"] = {
    config = { "\27LJ\2\ns\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\2\21operator_mapping\21<leader>c<space>\17line_mapping\agc\nsetup\17nvim_comment\frequire\0" },
    loaded = true,
    path = "/Users/lynn/.local/share/nvim/site/pack/packer/start/nvim-comment"
  },
  ["nvim-lsp-ts-utils"] = {
    loaded = true,
    path = "/Users/lynn/.local/share/nvim/site/pack/packer/start/nvim-lsp-ts-utils"
  },
  ["nvim-lspconfig"] = {
    config = { "\27LJ\2\nÑ\t\0\2\n\0\29\0f9\2\0\0+\3\1\0=\3\1\0026\2\2\0009\2\3\0029\2\4\2\18\4\1\0'\5\5\0'\6\6\0B\2\4\0015\2\a\0006\3\2\0009\3\3\0039\3\b\3\18\5\1\0'\6\t\0'\a\n\0'\b\v\0\18\t\2\0B\3\6\0016\3\2\0009\3\3\0039\3\b\3\18\5\1\0'\6\f\0'\a\n\0'\b\r\0\18\t\2\0B\3\6\0016\3\2\0009\3\3\0039\3\b\3\18\5\1\0'\6\t\0'\a\14\0'\b\15\0\18\t\2\0B\3\6\0016\3\2\0009\3\3\0039\3\b\3\18\5\1\0'\6\t\0'\a\16\0'\b\17\0\18\t\2\0B\3\6\0016\3\2\0009\3\3\0039\3\b\3\18\5\1\0'\6\t\0'\a\18\0'\b\19\0\18\t\2\0B\3\6\0016\3\2\0009\3\3\0039\3\b\3\18\5\1\0'\6\t\0'\a\20\0'\b\21\0\18\t\2\0B\3\6\0016\3\2\0009\3\3\0039\3\b\3\18\5\1\0'\6\t\0'\a\22\0'\b\23\0\18\t\2\0B\3\6\0016\3\2\0009\3\3\0039\3\b\3\18\5\1\0'\6\t\0'\a\24\0'\b\25\0\18\t\2\0B\3\6\0016\3\2\0009\3\3\0039\3\b\3\18\5\1\0'\6\t\0'\a\22\0'\b\26\0\18\t\2\0B\3\6\0016\3\2\0009\3\3\0039\3\b\3\18\5\1\0'\6\t\0'\a\27\0'\b\28\0\18\t\2\0B\3\6\1K\0\1\0Z<cmd>lua require'lspsaga.diagnostic'.show_line_diagnostics({ focusable = false })<CR>\14<leader>e*<cmd>lua vim.lsp.buf.references()<CR>/<cmd>lua vim.lsp.buf.type_definition()<CR>\14<leader>D?<silent>gr <cmd>lua require('lspsaga.rename').rename()<CR>\agr8<cmd>lua require'lspsaga.provider'.lsp_finder()<CR>\agh=<cmd>lua require('lspsaga.hover').render_hover_doc()<CR>\6K@<cmd>lua require'lspsaga.provider'.preview_definition()<CR>\agd*<cmd>lua vim.lsp.buf.definition()<CR>\agDH<cmd>'<,'>lua require('lspsaga.codeaction').range_code_action()<CR>\6v=<cmd>lua require('lspsaga.codeaction').code_action()<CR>\aga\6n\24nvim_buf_set_keymap\1\0\2\vsilent\2\fnoremap\2\27v:lua.vim.lsp.omnifunc\romnifunc\24nvim_buf_set_option\bapi\bvim\24document_formatting\26resolved_capabilitiesÖ\4\0\2\v\1\20\00066\2\0\0'\4\1\0B\2\2\0029\3\2\0+\4\1\0=\4\3\3-\3\0\0\18\5\0\0\18\6\1\0B\3\3\0019\3\4\0025\5\5\0B\3\2\0019\3\6\2\18\5\0\0B\3\2\0015\3\a\0006\4\b\0009\4\t\0049\4\n\4\18\6\1\0'\a\v\0'\b\f\0'\t\r\0\18\n\3\0B\4\6\0016\4\b\0009\4\t\0049\4\n\4\18\6\1\0'\a\v\0'\b\14\0'\t\15\0\18\n\3\0B\4\6\0016\4\b\0009\4\t\0049\4\n\4\18\6\1\0'\a\v\0'\b\16\0'\t\17\0\18\n\3\0B\4\6\0016\4\b\0009\4\t\0049\4\n\4\18\6\1\0'\a\v\0'\b\18\0'\t\19\0\18\n\3\0B\4\6\1K\0\1\0\6¿\24:TSLspImportAll<CR>\agi\25:TSLspRenameFile<CR>\agr\25:TSLspFixCurrent<CR>\aqq\23:TSLspOrganize<CR>\ags\6n\24nvim_buf_set_keymap\bapi\bvim\1\0\1\vsilent\2\17setup_client\1\0\3\27update_imports_on_move\1\14formatter\reslint_d\22enable_formatting\2\nsetup\30document_range_formatting\26resolved_capabilities\22nvim-lsp-ts-utils\frequireF\0\1\4\0\4\0\a6\1\0\0'\3\1\0B\1\2\0029\1\2\0019\3\3\0B\1\2\1K\0\1\0\tbody\19expand_snippet\vsnippy\frequire:\0\2\4\1\3\0\a-\2\0\0009\2\1\0029\2\2\0029\3\0\0018\2\3\2=\2\0\1L\1\2\0\3¿\fdefault\fpresets\tkindØ\2\0\1\6\0\v\1,6\1\0\0009\1\1\0019\1\2\1B\1\1\2\t\1\0\0X\1\22Ä6\1\0\0009\1\1\0019\1\3\1B\1\1\2\15\0\1\0X\2\aÄ6\1\0\0009\1\1\0019\1\4\0016\3\5\0'\5\6\0B\3\2\0C\1\0\0006\1\0\0009\1\1\0019\1\4\0016\3\5\0'\5\a\0B\3\2\2'\4\b\0B\1\3\1X\1\15Ä6\1\t\0B\1\1\2\15\0\1\0X\2\tÄ6\1\0\0009\1\1\0019\1\4\0016\3\5\0'\5\n\0B\3\2\2'\4\b\0B\1\3\1X\1\2Ä\18\1\0\0B\1\1\1K\0\1\0\n<tab>\21check_back_space\6n\n<C-n>\"<Plug>(snippy-expand-or-next)\6t\rfeedkeys!snippy#can_expand_or_advance\15pumvisible\afn\bvim\2Ÿ\1\0\1\6\0\t\1!6\1\0\0009\1\1\0019\1\2\1)\3ˇˇB\1\2\2\t\1\0\0X\1\bÄ6\1\0\0009\1\1\0019\1\3\0016\3\4\0'\5\5\0B\3\2\0C\1\0\0X\1\17Ä6\1\0\0009\1\1\0019\1\6\1B\1\1\2\t\1\0\0X\1\tÄ6\1\0\0009\1\1\0019\1\3\0016\3\4\0'\5\a\0B\3\2\2'\4\b\0B\1\3\1X\1\2Ä\18\1\0\0B\1\1\1K\0\1\0\6n\n<C-p>\15pumvisible\28<Plug>(snippy-previous)\6t\rfeedkeys\20snippy#can_jump\afn\bvim\2Ú\a\1\0\16\0004\0a6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0026\2\0\0'\4\3\0B\2\2\0026\3\0\0'\5\4\0B\3\2\0025\4\5\0006\5\6\0009\5\a\0059\5\b\0059\5\t\5B\5\1\0026\6\0\0'\b\n\0B\6\2\0029\6\v\6\18\b\5\0B\6\2\2\18\5\6\0009\6\f\1B\6\1\0013\6\r\0003\a\14\0009\b\15\0025\n\19\0005\v\17\0003\f\16\0=\f\18\v=\v\20\n5\v\21\0=\v\22\n4\v\5\0005\f\23\0>\f\1\v5\f\24\0>\f\2\v5\f\25\0>\f\3\v5\f\26\0>\f\4\v=\v\27\n5\v\29\0003\f\28\0=\f\30\v=\v\31\n5\v#\0009\f \0023\14!\0005\15\"\0B\f\3\2=\f$\v9\f \0023\14%\0005\15&\0B\f\3\2=\f'\v=\v \nB\b\2\0016\b(\0\18\n\4\0B\b\2\4X\v\6Ä8\r\f\0009\r\15\r5\15)\0=\5*\15=\6+\15B\r\2\1E\v\3\3R\v¯9\b,\0009\b\15\b5\n-\0=\5*\n=\a+\nB\b\2\0016\b\6\0009\b\a\b9\b.\b6\t\6\0009\t\a\t9\t0\t6\v\6\0009\v\a\v9\v1\v9\v2\v5\f3\0B\t\3\2=\t/\b2\0\0ÄK\0\1\0\1\0\3\14underline\2\17virtual_text\1\nsigns\2\27on_publish_diagnostics\15diagnostic\twith$textDocument/publishDiagnostics\rhandlers\1\0\0\rtsserver\14on_attach\17capabilities\1\0\0\vipairs\f<S-Tab>\1\3\0\0\6i\6s\0\n<Tab>\1\0\0\1\3\0\0\6i\6s\0\fmapping\15formatting\vformat\1\0\0\0\fsources\1\0\1\tname\vbuffer\1\0\1\tname\tpath\1\0\1\tname\rnvim_lsp\1\0\1\tname\vsnippy\15completion\1\0\1\16completeopt\26menu,menuone,noinsert\fsnippet\1\0\0\vexpand\1\0\0\0\nsetup\0\0\18init_lsp_saga\24update_capabilities\17cmp_nvim_lsp\29make_client_capabilities\rprotocol\blsp\bvim\1\15\0\0\ncssls\vbashls\rdockerls\tflow\ngopls\thtml\17intelephense\fpyright\vjsonls\18rust_analyzer\14sourcekit\15solargraph\nvimls\nvuels\flspkind\bcmp\flspsaga\14lspconfig\frequire\0" },
    loaded = true,
    path = "/Users/lynn/.local/share/nvim/site/pack/packer/start/nvim-lspconfig"
  },
  ["nvim-lspupdate"] = {
    loaded = true,
    path = "/Users/lynn/.local/share/nvim/site/pack/packer/start/nvim-lspupdate"
  },
  ["nvim-snippy"] = {
    loaded = true,
    path = "/Users/lynn/.local/share/nvim/site/pack/packer/start/nvim-snippy"
  },
  ["nvim-tree.lua"] = {
    config = { "\27LJ\2\n®\1\0\0\a\0\n\0\0176\0\0\0'\2\1\0B\0\2\0029\1\2\0B\1\1\2\15\0\1\0X\2\tÄ6\2\3\0009\2\4\0029\2\5\2'\4\6\0009\5\a\1'\6\b\0&\4\6\0045\5\t\0B\2\3\1K\0\1\0\1\0\1\vdetach\2\b' &\18absolute_path\vopen '\rjobstart\afn\bvim\23get_node_at_cursor\18nvim-tree.lib\frequire°\3\1\0\6\0\19\0\"6\0\0\0009\0\1\0)\1\1\0=\1\2\0006\0\0\0009\0\1\0)\1\1\0=\1\3\0006\0\0\0009\0\1\0005\1\5\0=\1\4\0006\0\0\0009\0\1\0005\1\a\0=\1\6\0006\0\b\0'\2\t\0B\0\2\0029\0\n\0003\1\v\0007\1\f\0006\1\0\0009\1\1\0014\2\3\0005\3\14\0>\3\1\2=\2\r\0016\1\15\0'\3\16\0'\4\17\0'\5\18\0B\1\4\1K\0\1\0\24:NvimTreeToggle<CR>\n<C-a>\5\bmap\1\0\2\bkey\6o\acb\30:lua NvimTreeOSOpen()<cr>\23nvim_tree_bindings\19NvimTreeOSOpen\0\23nvim_tree_callback\21nvim-tree.config\frequire\1\0\3\ffolders\3\1\nfiles\3\1\bgit\3\0\25nvim_tree_show_icons\1\2\0\0\14.DS_Store\21nvim_tree_ignore\25nvim_tree_auto_close\24nvim_tree_auto_open\6g\bvim\0" },
    loaded = true,
    path = "/Users/lynn/.local/share/nvim/site/pack/packer/start/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\nô\2\0\0\5\0\14\0\0176\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0025\3\6\0=\3\a\0025\3\t\0005\4\b\0=\4\n\0035\4\v\0=\4\f\3=\3\r\2B\0\2\1K\0\1\0\rrefactor\28highlight_current_scope\1\0\1\venable\1\26highlight_definitions\1\0\0\1\0\1\venable\1\vindent\1\0\1\venable\2\14highlight\1\0\2\venable\2\21use_languagetree\2\1\0\1\21ensure_installed\15maintained\nsetup\28nvim-treesitter.configs\frequire\0" },
    loaded = true,
    path = "/Users/lynn/.local/share/nvim/site/pack/packer/start/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/Users/lynn/.local/share/nvim/site/pack/packer/start/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/Users/lynn/.local/share/nvim/site/pack/packer/start/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/Users/lynn/.local/share/nvim/site/pack/packer/start/plenary.nvim"
  },
  ["telescope.nvim"] = {
    config = { "\27LJ\2\n†\2\0\0\5\0\14\0\0246\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\0016\0\6\0'\2\a\0'\3\b\0'\4\t\0B\0\4\0016\0\6\0'\2\a\0'\3\n\0'\4\v\0B\0\4\0016\0\6\0'\2\a\0'\3\f\0'\4\r\0B\0\4\1K\0\1\0\31<cmd>Telescope buffers<cr>\14<leader>b!<cmd>Telescope live_grep<cr>\14<leader>/\"<cmd>Telescope find_files<cr>\14<leader>t\5\bmap\18layout_config\1\0\0\1\0\1\20prompt_position\btop\nsetup\14telescope\frequire\0" },
    loaded = true,
    path = "/Users/lynn/.local/share/nvim/site/pack/packer/start/telescope.nvim"
  },
  ["vim-better-whitespace"] = {
    config = { "\27LJ\2\nÕ\1\0\0\6\0\t\0\v6\0\0\0009\0\1\0005\1\3\0=\1\2\0006\0\4\0'\2\5\0'\3\6\0'\4\a\0005\5\b\0B\0\5\1K\0\1\0\1\0\2\vsilent\2\fnoremap\2\25:StripWhitespace<CR>\14<leader>w\6n\bmap\1\b\0\0\14dashboard\tdiff\14gitcommit\nunite\aqf\thelp\14telescope*better_whitespace_filetypes_blacklist\6g\bvim\0" },
    loaded = true,
    path = "/Users/lynn/.local/share/nvim/site/pack/packer/start/vim-better-whitespace"
  },
  ["vim-devicons"] = {
    loaded = true,
    path = "/Users/lynn/.local/share/nvim/site/pack/packer/start/vim-devicons"
  },
  ["vim-floaterm"] = {
    config = { "\27LJ\2\n˛\1\0\0\6\0\v\2\0236\0\0\0009\0\1\0*\1\0\0=\1\2\0006\0\0\0009\0\1\0*\1\1\0=\1\3\0006\0\0\0009\0\1\0)\1\n\0=\1\4\0006\0\0\0009\0\1\0+\1\2\0=\1\5\0006\0\6\0'\2\a\0'\3\b\0'\4\t\0005\5\n\0B\0\5\1K\0\1\0\1\0\2\vsilent\2\fnoremap\2\24:FloatermToggle<CR>\20<Leader><Space>\5\bmap\23floaterm_autoclose\22floaterm_winblend\20floaterm_height\19floaterm_width\6g\bvimõ≥ÊÃ\25Ãô≥ˇ\3Õô≥Ê\fÊÃôˇ\3\0" },
    loaded = true,
    path = "/Users/lynn/.local/share/nvim/site/pack/packer/start/vim-floaterm"
  },
  ["vim-fugitive"] = {
    config = { "\27LJ\2\nP\0\0\6\0\5\0\a6\0\0\0'\2\1\0'\3\2\0'\4\3\0005\5\4\0B\0\5\1K\0\1\0\1\0\2\vsilent\2\fnoremap\2\r:Git<cr>\14<leader>g\6n\bmap\0" },
    loaded = true,
    path = "/Users/lynn/.local/share/nvim/site/pack/packer/start/vim-fugitive"
  },
  ["vim-git"] = {
    loaded = true,
    path = "/Users/lynn/.local/share/nvim/site/pack/packer/start/vim-git"
  },
  ["vim-hexokinase"] = {
    loaded = true,
    path = "/Users/lynn/.local/share/nvim/site/pack/packer/start/vim-hexokinase"
  },
  ["vim-repeat"] = {
    loaded = true,
    path = "/Users/lynn/.local/share/nvim/site/pack/packer/start/vim-repeat"
  },
  ["vim-rsi"] = {
    loaded = true,
    path = "/Users/lynn/.local/share/nvim/site/pack/packer/start/vim-rsi"
  },
  ["vim-slash"] = {
    loaded = true,
    path = "/Users/lynn/.local/share/nvim/site/pack/packer/start/vim-slash"
  },
  ["vim-sleuth"] = {
    loaded = true,
    path = "/Users/lynn/.local/share/nvim/site/pack/packer/start/vim-sleuth"
  },
  ["vim-snippets"] = {
    loaded = true,
    path = "/Users/lynn/.local/share/nvim/site/pack/packer/start/vim-snippets"
  },
  ["vim-surround"] = {
    config = { "\27LJ\2\n1\0\0\2\0\3\0\0056\0\0\0009\0\1\0)\1\1\0=\1\2\0K\0\1\0\20surround_indent\6g\bvim\0" },
    loaded = true,
    path = "/Users/lynn/.local/share/nvim/site/pack/packer/start/vim-surround"
  },
  ["vim-test"] = {
    config = { "\27LJ\2\nÍ\3\0\0\a\0\24\00026\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\1\0'\1\5\0=\1\4\0006\0\0\0009\0\1\0)\1\1\0=\1\6\0006\0\0\0009\0\1\0'\1\b\0=\1\a\0006\0\0\0009\0\1\0'\1\n\0=\1\t\0006\0\0\0009\0\1\0'\1\f\0=\1\v\0005\0\r\0006\1\14\0'\3\15\0'\4\16\0'\5\17\0\18\6\0\0B\1\5\0016\1\14\0'\3\15\0'\4\18\0'\5\19\0\18\6\0\0B\1\5\0016\1\14\0'\3\15\0'\4\20\0'\5\21\0\18\6\0\0B\1\5\0016\1\14\0'\3\15\0'\4\22\0'\5\23\0\18\6\0\0B\1\5\1K\0\1\0\18:TestLast<cr>\15<leader>rr\18:TestFile<cr>\15<leader>rf\19:TestSuite<cr>\15<leader>rt\21:TestNearest<cr>\15<leader>rn\6n\bmap\1\0\2\vsilent\2\fnoremap\2\rvertical\24neoterm_default_mod\b,TT\25neoterm_automap_keys\bzsh\18neoterm_shell\25test#preserve_screen\tvert\31test#neoterm#term_position\fneoterm\18test#strategy\6g\bvim\0" },
    loaded = true,
    path = "/Users/lynn/.local/share/nvim/site/pack/packer/start/vim-test"
  },
  ["vim-unimpaired"] = {
    loaded = true,
    path = "/Users/lynn/.local/share/nvim/site/pack/packer/start/vim-unimpaired"
  },
  ["vim-visual-multi"] = {
    loaded = true,
    path = "/Users/lynn/.local/share/nvim/site/pack/packer/start/vim-visual-multi"
  },
  ["vim-wordmotion"] = {
    loaded = true,
    path = "/Users/lynn/.local/share/nvim/site/pack/packer/start/vim-wordmotion"
  },
  ["which-key.nvim"] = {
    config = { "\27LJ\2\n;\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\14which-key\frequire\0" },
    loaded = true,
    path = "/Users/lynn/.local/share/nvim/site/pack/packer/start/which-key.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: nvim-autopairs
time([[Config for nvim-autopairs]], true)
try_loadstring("\27LJ\2\nÚ\2\0\0\6\0\16\0\0296\0\0\0009\0\1\0009\0\2\0006\1\3\0'\3\4\0B\1\2\0029\2\5\0015\4\6\0005\5\a\0=\5\b\4B\2\2\0016\2\3\0'\4\t\0B\2\2\0029\2\5\0025\4\v\0005\5\n\0=\5\f\4B\2\2\0016\2\3\0'\4\r\0B\2\2\0029\2\5\0025\4\14\0B\2\2\0016\2\3\0'\4\15\0B\2\2\2K\0\1\0\28nvim-autopairs.ts-conds\1\0\3\vmap_cr\2\16auto_select\2\17map_complete\2\"nvim-autopairs.completion.cmp\14autopairs\1\0\0\1\0\1\venable\2\28nvim-treesitter.configs\21disable_filetype\1\3\0\0\20TelescopePrompt\bvim\1\0\1\rcheck_ts\2\nsetup\19nvim-autopairs\frequire\20nvim_set_keymap\bapi\bvim\0", "config", "nvim-autopairs")
time([[Config for nvim-autopairs]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\nô\2\0\0\5\0\14\0\0176\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0025\3\6\0=\3\a\0025\3\t\0005\4\b\0=\4\n\0035\4\v\0=\4\f\3=\3\r\2B\0\2\1K\0\1\0\rrefactor\28highlight_current_scope\1\0\1\venable\1\26highlight_definitions\1\0\0\1\0\1\venable\1\vindent\1\0\1\venable\2\14highlight\1\0\2\venable\2\21use_languagetree\2\1\0\1\21ensure_installed\15maintained\nsetup\28nvim-treesitter.configs\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: dashboard-nvim
time([[Config for dashboard-nvim]], true)
try_loadstring("\27LJ\2\nã\6\0\0\2\0\n\0\0176\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\1\0'\1\5\0=\1\4\0006\0\0\0009\0\1\0005\1\a\0=\1\6\0006\0\0\0009\0\1\0005\1\t\0=\1\b\0K\0\1\0\1\18\0\0&                                 &                --      --       &              .:\"  | .:'' |      &            --  ___   ___  -     &          /:.  /  .\\ /.  \\ .\\    &         |:|. ;\\___/O\\___/  :|   &         |:|. |  `__|__`  | .|   &         |:|.  \\_,     ,_/  /    &          \\______       |__/     &           |:.           \\       &          /.:,|  |        \\      &         /.:,.|  |         \\     &         |::.. \\_;_\\-;       |   &   _____|::..    .::|       |    &  /   ----,     .::/__,    /__,  &  \\_______|,...____;_;_|../_;_|  &                                 \28dashboard_custom_header\1\3\0\0\rstartify\14dashboard\29nvim_tree_auto_ignore_ft\6,\14mapleader\bfzf dashboard_default_executive\6g\bvim\0", "config", "dashboard-nvim")
time([[Config for dashboard-nvim]], false)
-- Config for: nightfox.nvim
time([[Config for nightfox.nvim]], true)
try_loadstring("\27LJ\2\n8\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0\25colorscheme nightfox\bcmd\bvim\0", "config", "nightfox.nvim")
time([[Config for nightfox.nvim]], false)
-- Config for: vim-surround
time([[Config for vim-surround]], true)
try_loadstring("\27LJ\2\n1\0\0\2\0\3\0\0056\0\0\0009\0\1\0)\1\1\0=\1\2\0K\0\1\0\20surround_indent\6g\bvim\0", "config", "vim-surround")
time([[Config for vim-surround]], false)
-- Config for: vim-better-whitespace
time([[Config for vim-better-whitespace]], true)
try_loadstring("\27LJ\2\nÕ\1\0\0\6\0\t\0\v6\0\0\0009\0\1\0005\1\3\0=\1\2\0006\0\4\0'\2\5\0'\3\6\0'\4\a\0005\5\b\0B\0\5\1K\0\1\0\1\0\2\vsilent\2\fnoremap\2\25:StripWhitespace<CR>\14<leader>w\6n\bmap\1\b\0\0\14dashboard\tdiff\14gitcommit\nunite\aqf\thelp\14telescope*better_whitespace_filetypes_blacklist\6g\bvim\0", "config", "vim-better-whitespace")
time([[Config for vim-better-whitespace]], false)
-- Config for: vim-test
time([[Config for vim-test]], true)
try_loadstring("\27LJ\2\nÍ\3\0\0\a\0\24\00026\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\1\0'\1\5\0=\1\4\0006\0\0\0009\0\1\0)\1\1\0=\1\6\0006\0\0\0009\0\1\0'\1\b\0=\1\a\0006\0\0\0009\0\1\0'\1\n\0=\1\t\0006\0\0\0009\0\1\0'\1\f\0=\1\v\0005\0\r\0006\1\14\0'\3\15\0'\4\16\0'\5\17\0\18\6\0\0B\1\5\0016\1\14\0'\3\15\0'\4\18\0'\5\19\0\18\6\0\0B\1\5\0016\1\14\0'\3\15\0'\4\20\0'\5\21\0\18\6\0\0B\1\5\0016\1\14\0'\3\15\0'\4\22\0'\5\23\0\18\6\0\0B\1\5\1K\0\1\0\18:TestLast<cr>\15<leader>rr\18:TestFile<cr>\15<leader>rf\19:TestSuite<cr>\15<leader>rt\21:TestNearest<cr>\15<leader>rn\6n\bmap\1\0\2\vsilent\2\fnoremap\2\rvertical\24neoterm_default_mod\b,TT\25neoterm_automap_keys\bzsh\18neoterm_shell\25test#preserve_screen\tvert\31test#neoterm#term_position\fneoterm\18test#strategy\6g\bvim\0", "config", "vim-test")
time([[Config for vim-test]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring("\27LJ\2\n†\2\0\0\5\0\14\0\0246\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\0016\0\6\0'\2\a\0'\3\b\0'\4\t\0B\0\4\0016\0\6\0'\2\a\0'\3\n\0'\4\v\0B\0\4\0016\0\6\0'\2\a\0'\3\f\0'\4\r\0B\0\4\1K\0\1\0\31<cmd>Telescope buffers<cr>\14<leader>b!<cmd>Telescope live_grep<cr>\14<leader>/\"<cmd>Telescope find_files<cr>\14<leader>t\5\bmap\18layout_config\1\0\0\1\0\1\20prompt_position\btop\nsetup\14telescope\frequire\0", "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)
-- Config for: gitsigns.nvim
time([[Config for gitsigns.nvim]], true)
try_loadstring("\27LJ\2\n6\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\rgitsigns\frequire\0", "config", "gitsigns.nvim")
time([[Config for gitsigns.nvim]], false)
-- Config for: nvim-comment
time([[Config for nvim-comment]], true)
try_loadstring("\27LJ\2\ns\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\2\21operator_mapping\21<leader>c<space>\17line_mapping\agc\nsetup\17nvim_comment\frequire\0", "config", "nvim-comment")
time([[Config for nvim-comment]], false)
-- Config for: indent-blankline.nvim
time([[Config for indent-blankline.nvim]], true)
try_loadstring("\27LJ\2\n≤\1\0\0\4\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0025\3\6\0=\3\a\2B\0\2\1K\0\1\0\21filetype_exclude\1\2\0\0\14dashboard\20buftype_exclude\1\4\0\0\rterminal\vnofile\14dashboard\1\0\1\19use_treesitter\2\nsetup\21indent_blankline\frequire\0", "config", "indent-blankline.nvim")
time([[Config for indent-blankline.nvim]], false)
-- Config for: vim-floaterm
time([[Config for vim-floaterm]], true)
try_loadstring("\27LJ\2\n˛\1\0\0\6\0\v\2\0236\0\0\0009\0\1\0*\1\0\0=\1\2\0006\0\0\0009\0\1\0*\1\1\0=\1\3\0006\0\0\0009\0\1\0)\1\n\0=\1\4\0006\0\0\0009\0\1\0+\1\2\0=\1\5\0006\0\6\0'\2\a\0'\3\b\0'\4\t\0005\5\n\0B\0\5\1K\0\1\0\1\0\2\vsilent\2\fnoremap\2\24:FloatermToggle<CR>\20<Leader><Space>\5\bmap\23floaterm_autoclose\22floaterm_winblend\20floaterm_height\19floaterm_width\6g\bvimõ≥ÊÃ\25Ãô≥ˇ\3Õô≥Ê\fÊÃôˇ\3\0", "config", "vim-floaterm")
time([[Config for vim-floaterm]], false)
-- Config for: lightspeed.nvim
time([[Config for lightspeed.nvim]], true)
try_loadstring("\27LJ\2\nÖ\2\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\a\25grey_out_search_area\2\27highlight_unique_chars\2)jump_on_partial_input_safety_timeout\3ê\3\24jump_to_first_match\2\30full_inclusive_prefix_key\n<c-x>\21limit_ft_matches\3\5+match_only_the_start_of_same_char_seqs\2\nsetup\15lightspeed\frequire\0", "config", "lightspeed.nvim")
time([[Config for lightspeed.nvim]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
try_loadstring("\27LJ\2\nÑ\t\0\2\n\0\29\0f9\2\0\0+\3\1\0=\3\1\0026\2\2\0009\2\3\0029\2\4\2\18\4\1\0'\5\5\0'\6\6\0B\2\4\0015\2\a\0006\3\2\0009\3\3\0039\3\b\3\18\5\1\0'\6\t\0'\a\n\0'\b\v\0\18\t\2\0B\3\6\0016\3\2\0009\3\3\0039\3\b\3\18\5\1\0'\6\f\0'\a\n\0'\b\r\0\18\t\2\0B\3\6\0016\3\2\0009\3\3\0039\3\b\3\18\5\1\0'\6\t\0'\a\14\0'\b\15\0\18\t\2\0B\3\6\0016\3\2\0009\3\3\0039\3\b\3\18\5\1\0'\6\t\0'\a\16\0'\b\17\0\18\t\2\0B\3\6\0016\3\2\0009\3\3\0039\3\b\3\18\5\1\0'\6\t\0'\a\18\0'\b\19\0\18\t\2\0B\3\6\0016\3\2\0009\3\3\0039\3\b\3\18\5\1\0'\6\t\0'\a\20\0'\b\21\0\18\t\2\0B\3\6\0016\3\2\0009\3\3\0039\3\b\3\18\5\1\0'\6\t\0'\a\22\0'\b\23\0\18\t\2\0B\3\6\0016\3\2\0009\3\3\0039\3\b\3\18\5\1\0'\6\t\0'\a\24\0'\b\25\0\18\t\2\0B\3\6\0016\3\2\0009\3\3\0039\3\b\3\18\5\1\0'\6\t\0'\a\22\0'\b\26\0\18\t\2\0B\3\6\0016\3\2\0009\3\3\0039\3\b\3\18\5\1\0'\6\t\0'\a\27\0'\b\28\0\18\t\2\0B\3\6\1K\0\1\0Z<cmd>lua require'lspsaga.diagnostic'.show_line_diagnostics({ focusable = false })<CR>\14<leader>e*<cmd>lua vim.lsp.buf.references()<CR>/<cmd>lua vim.lsp.buf.type_definition()<CR>\14<leader>D?<silent>gr <cmd>lua require('lspsaga.rename').rename()<CR>\agr8<cmd>lua require'lspsaga.provider'.lsp_finder()<CR>\agh=<cmd>lua require('lspsaga.hover').render_hover_doc()<CR>\6K@<cmd>lua require'lspsaga.provider'.preview_definition()<CR>\agd*<cmd>lua vim.lsp.buf.definition()<CR>\agDH<cmd>'<,'>lua require('lspsaga.codeaction').range_code_action()<CR>\6v=<cmd>lua require('lspsaga.codeaction').code_action()<CR>\aga\6n\24nvim_buf_set_keymap\1\0\2\vsilent\2\fnoremap\2\27v:lua.vim.lsp.omnifunc\romnifunc\24nvim_buf_set_option\bapi\bvim\24document_formatting\26resolved_capabilitiesÖ\4\0\2\v\1\20\00066\2\0\0'\4\1\0B\2\2\0029\3\2\0+\4\1\0=\4\3\3-\3\0\0\18\5\0\0\18\6\1\0B\3\3\0019\3\4\0025\5\5\0B\3\2\0019\3\6\2\18\5\0\0B\3\2\0015\3\a\0006\4\b\0009\4\t\0049\4\n\4\18\6\1\0'\a\v\0'\b\f\0'\t\r\0\18\n\3\0B\4\6\0016\4\b\0009\4\t\0049\4\n\4\18\6\1\0'\a\v\0'\b\14\0'\t\15\0\18\n\3\0B\4\6\0016\4\b\0009\4\t\0049\4\n\4\18\6\1\0'\a\v\0'\b\16\0'\t\17\0\18\n\3\0B\4\6\0016\4\b\0009\4\t\0049\4\n\4\18\6\1\0'\a\v\0'\b\18\0'\t\19\0\18\n\3\0B\4\6\1K\0\1\0\6¿\24:TSLspImportAll<CR>\agi\25:TSLspRenameFile<CR>\agr\25:TSLspFixCurrent<CR>\aqq\23:TSLspOrganize<CR>\ags\6n\24nvim_buf_set_keymap\bapi\bvim\1\0\1\vsilent\2\17setup_client\1\0\3\27update_imports_on_move\1\14formatter\reslint_d\22enable_formatting\2\nsetup\30document_range_formatting\26resolved_capabilities\22nvim-lsp-ts-utils\frequireF\0\1\4\0\4\0\a6\1\0\0'\3\1\0B\1\2\0029\1\2\0019\3\3\0B\1\2\1K\0\1\0\tbody\19expand_snippet\vsnippy\frequire:\0\2\4\1\3\0\a-\2\0\0009\2\1\0029\2\2\0029\3\0\0018\2\3\2=\2\0\1L\1\2\0\3¿\fdefault\fpresets\tkindØ\2\0\1\6\0\v\1,6\1\0\0009\1\1\0019\1\2\1B\1\1\2\t\1\0\0X\1\22Ä6\1\0\0009\1\1\0019\1\3\1B\1\1\2\15\0\1\0X\2\aÄ6\1\0\0009\1\1\0019\1\4\0016\3\5\0'\5\6\0B\3\2\0C\1\0\0006\1\0\0009\1\1\0019\1\4\0016\3\5\0'\5\a\0B\3\2\2'\4\b\0B\1\3\1X\1\15Ä6\1\t\0B\1\1\2\15\0\1\0X\2\tÄ6\1\0\0009\1\1\0019\1\4\0016\3\5\0'\5\n\0B\3\2\2'\4\b\0B\1\3\1X\1\2Ä\18\1\0\0B\1\1\1K\0\1\0\n<tab>\21check_back_space\6n\n<C-n>\"<Plug>(snippy-expand-or-next)\6t\rfeedkeys!snippy#can_expand_or_advance\15pumvisible\afn\bvim\2Ÿ\1\0\1\6\0\t\1!6\1\0\0009\1\1\0019\1\2\1)\3ˇˇB\1\2\2\t\1\0\0X\1\bÄ6\1\0\0009\1\1\0019\1\3\0016\3\4\0'\5\5\0B\3\2\0C\1\0\0X\1\17Ä6\1\0\0009\1\1\0019\1\6\1B\1\1\2\t\1\0\0X\1\tÄ6\1\0\0009\1\1\0019\1\3\0016\3\4\0'\5\a\0B\3\2\2'\4\b\0B\1\3\1X\1\2Ä\18\1\0\0B\1\1\1K\0\1\0\6n\n<C-p>\15pumvisible\28<Plug>(snippy-previous)\6t\rfeedkeys\20snippy#can_jump\afn\bvim\2Ú\a\1\0\16\0004\0a6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0026\2\0\0'\4\3\0B\2\2\0026\3\0\0'\5\4\0B\3\2\0025\4\5\0006\5\6\0009\5\a\0059\5\b\0059\5\t\5B\5\1\0026\6\0\0'\b\n\0B\6\2\0029\6\v\6\18\b\5\0B\6\2\2\18\5\6\0009\6\f\1B\6\1\0013\6\r\0003\a\14\0009\b\15\0025\n\19\0005\v\17\0003\f\16\0=\f\18\v=\v\20\n5\v\21\0=\v\22\n4\v\5\0005\f\23\0>\f\1\v5\f\24\0>\f\2\v5\f\25\0>\f\3\v5\f\26\0>\f\4\v=\v\27\n5\v\29\0003\f\28\0=\f\30\v=\v\31\n5\v#\0009\f \0023\14!\0005\15\"\0B\f\3\2=\f$\v9\f \0023\14%\0005\15&\0B\f\3\2=\f'\v=\v \nB\b\2\0016\b(\0\18\n\4\0B\b\2\4X\v\6Ä8\r\f\0009\r\15\r5\15)\0=\5*\15=\6+\15B\r\2\1E\v\3\3R\v¯9\b,\0009\b\15\b5\n-\0=\5*\n=\a+\nB\b\2\0016\b\6\0009\b\a\b9\b.\b6\t\6\0009\t\a\t9\t0\t6\v\6\0009\v\a\v9\v1\v9\v2\v5\f3\0B\t\3\2=\t/\b2\0\0ÄK\0\1\0\1\0\3\14underline\2\17virtual_text\1\nsigns\2\27on_publish_diagnostics\15diagnostic\twith$textDocument/publishDiagnostics\rhandlers\1\0\0\rtsserver\14on_attach\17capabilities\1\0\0\vipairs\f<S-Tab>\1\3\0\0\6i\6s\0\n<Tab>\1\0\0\1\3\0\0\6i\6s\0\fmapping\15formatting\vformat\1\0\0\0\fsources\1\0\1\tname\vbuffer\1\0\1\tname\tpath\1\0\1\tname\rnvim_lsp\1\0\1\tname\vsnippy\15completion\1\0\1\16completeopt\26menu,menuone,noinsert\fsnippet\1\0\0\vexpand\1\0\0\0\nsetup\0\0\18init_lsp_saga\24update_capabilities\17cmp_nvim_lsp\29make_client_capabilities\rprotocol\blsp\bvim\1\15\0\0\ncssls\vbashls\rdockerls\tflow\ngopls\thtml\17intelephense\fpyright\vjsonls\18rust_analyzer\14sourcekit\15solargraph\nvimls\nvuels\flspkind\bcmp\flspsaga\14lspconfig\frequire\0", "config", "nvim-lspconfig")
time([[Config for nvim-lspconfig]], false)
-- Config for: lsp-colors.nvim
time([[Config for lsp-colors.nvim]], true)
try_loadstring("\27LJ\2\n8\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\15lsp-colors\frequire\0", "config", "lsp-colors.nvim")
time([[Config for lsp-colors.nvim]], false)
-- Config for: vim-fugitive
time([[Config for vim-fugitive]], true)
try_loadstring("\27LJ\2\nP\0\0\6\0\5\0\a6\0\0\0'\2\1\0'\3\2\0'\4\3\0005\5\4\0B\0\5\1K\0\1\0\1\0\2\vsilent\2\fnoremap\2\r:Git<cr>\14<leader>g\6n\bmap\0", "config", "vim-fugitive")
time([[Config for vim-fugitive]], false)
-- Config for: null-ls.nvim
time([[Config for null-ls.nvim]], true)
try_loadstring("\27LJ\2\n˚\3\0\0\6\0\24\0A6\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\3\0004\4\f\0009\5\4\0009\5\5\0059\5\6\5>\5\1\0049\5\4\0009\5\5\0059\5\a\5>\5\2\0049\5\4\0009\5\5\0059\5\b\5>\5\3\0049\5\4\0009\5\5\0059\5\t\5>\5\4\0049\5\4\0009\5\5\0059\5\n\5>\5\5\0049\5\4\0009\5\5\0059\5\v\5>\5\6\0049\5\4\0009\5\5\0059\5\f\5>\5\a\0049\5\4\0009\5\5\0059\5\r\5>\5\b\0049\5\4\0009\5\5\0059\5\14\5>\5\t\0049\5\4\0009\5\15\0059\5\6\5>\5\n\0049\5\4\0009\5\15\0059\5\16\5>\5\v\4=\4\17\3B\1\2\0016\1\0\0'\3\18\0B\1\2\0029\1\1\0019\1\19\0014\3\0\0B\1\2\0016\1\20\0'\3\21\0'\4\22\0'\5\23\0B\1\4\1K\0\1\0/<cmd>lua vim.lsp.buf.formatting_sync()<cr>\14<leader>f\6n\bmap\nsetup\14lspconfig\fsources\rluacheck\16diagnostics\nshfmt\14sqlformat\trufo\frustfmt\vphpcbf\21nginx_beautifier\15lua_format\14json_tool\reslint_d\15formatting\rbuiltins\1\0\1\ndebug\1\vconfig\fnull-ls\frequire\0", "config", "null-ls.nvim")
time([[Config for null-ls.nvim]], false)
-- Config for: lsp-trouble.nvim
time([[Config for lsp-trouble.nvim]], true)
try_loadstring("\27LJ\2\nê\1\0\0\6\0\b\0\r6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\0016\0\3\0'\2\4\0'\3\5\0'\4\6\0005\5\a\0B\0\5\1K\0\1\0\1\0\2\vsilent\2\fnoremap\2\30<cmd>LspTroubleToggle<cr>\15<leader>xx\6n\bmap\nsetup\ftrouble\frequire\0", "config", "lsp-trouble.nvim")
time([[Config for lsp-trouble.nvim]], false)
-- Config for: galaxyline.nvim
time([[Config for galaxyline.nvim]], true)
try_loadstring("\27LJ\2\nÕ\3\0\0\6\1$\0J5\0\1\0-\1\0\0009\1\0\1=\1\2\0-\1\0\0009\1\3\1=\1\4\0-\1\0\0009\1\5\1=\1\6\0-\1\0\0009\1\5\1=\1\a\0-\1\0\0009\1\5\1=\1\b\0-\1\0\0009\1\t\1=\1\n\0-\1\0\0009\1\0\1=\1\v\0-\1\0\0009\1\f\1=\1\r\0-\1\0\0009\1\f\1=\1\14\0-\1\0\0009\1\f\1=\1\15\0-\1\0\0009\1\16\1=\1\17\0-\1\0\0009\1\18\1=\1\19\0-\1\0\0009\1\18\1=\1\20\0-\1\0\0009\1\0\1=\1\21\0-\1\0\0009\1\0\1=\1\22\0-\1\0\0009\1\23\1=\1\24\0-\1\0\0009\1\23\1=\1\25\0-\1\0\0009\1\23\1=\1\26\0-\1\0\0009\1\0\1=\1\27\0-\1\0\0009\1\0\1=\1\28\0006\1\29\0009\1\30\0019\1\31\1'\3 \0006\4\29\0009\4!\0049\4\"\4B\4\1\0028\4\4\0&\3\4\3B\1\2\1'\1#\0L\1\2\0\1¿\t‚ñä \tmode\afn\27hi GalaxyViMode guifg=\17nvim_command\bapi\bvim\6t\6!\ar?\arm\6r\tcyan\ace\acv\aRv\6R\bred\aic\vyellow\6\19\6S\6s\vorange\ano\6c\fmagenta\6V\6\22\6v\vpurple\6i\ngreen\6n\1\0\0\tblue\20\0\0\1\0\1\0\2'\0\0\0L\0\2\0\t Óú•T\0\0\2\0\4\0\v5\0\0\0006\1\1\0009\1\2\0019\1\3\0018\1\1\0\15\0\1\0X\2\2Ä+\1\1\0L\1\2\0+\1\2\0L\1\2\0\rfiletype\abo\bvim\1\0\2\6 \2\14dashboard\2a\0\0\5\0\6\0\n'\0\0\0006\1\1\0009\1\2\0019\1\3\1)\3\0\0'\4\4\0B\1\3\2'\2\5\0&\0\2\0L\0\2\0\6 \15shiftwidth\24nvim_buf_get_option\bapi\bvim\rSpaces: \17\0\0\1\0\1\0\2'\0\0\0L\0\2\0\6 ’\21\1\0\n\0h\0≤\0026\0\0\0'\2\1\0B\0\2\0025\1\2\0006\2\0\0'\4\3\0B\2\2\0029\3\4\0005\4\6\0=\4\5\0009\4\a\0035\5\14\0005\6\t\0003\a\b\0=\a\n\0064\a\3\0009\b\v\1>\b\1\a9\b\f\1>\b\2\a=\a\r\6=\6\15\5>\5\1\0046\4\16\0006\6\17\0009\6\18\0069\6\19\6)\b\0\0'\t\20\0B\6\3\0A\4\0\0016\4\17\0009\4\18\0049\4\19\4)\6\0\0'\a\20\0B\4\3\0019\4\a\0035\5\28\0005\6\22\0003\a\21\0=\a\n\0069\a\23\2=\a\24\0065\a\25\0009\b\f\1>\b\2\a=\a\26\0064\a\3\0009\b\27\1>\b\1\a9\b\f\1>\b\2\a=\a\r\6=\6\29\5>\5\2\0049\4\a\0035\5!\0005\6\30\0009\a\31\2=\a\24\0064\a\3\0009\b \1>\b\1\a9\b\f\1>\b\2\a=\a\r\6=\6\"\5>\5\3\0049\4\a\0035\5&\0005\6#\0009\a$\2=\a\24\0064\a\3\0009\b%\1>\b\1\a9\b\f\1>\b\2\a=\a\r\6=\6'\5>\5\4\0049\4\a\0035\5*\0005\6(\0009\a$\2=\a\24\0064\a\3\0009\b)\1>\b\1\a9\b\f\1>\b\2\a=\a\r\6=\6+\5>\5\5\0049\4\a\0035\5-\0005\6,\0009\a$\2=\a\24\0064\a\3\0009\b\v\1>\b\1\a9\b\f\1>\b\2\a=\a\r\6=\6.\5>\5\6\0049\4/\0035\0052\0005\0060\0004\a\3\0009\b1\1>\b\1\a9\b\f\1>\b\2\a=\a\r\6=\0063\5>\5\1\0049\4/\0035\0055\0005\0064\0004\a\3\0009\b\27\1>\b\1\a9\b\f\1>\b\2\a=\a\r\6=\0066\5>\5\2\0049\4/\0035\0059\0005\0067\0004\a\3\0009\b8\1>\b\1\a9\b\f\1>\b\2\a=\a\r\6=\6:\5>\5\3\0049\4/\0035\5=\0005\6;\0004\a\3\0009\b<\1>\b\1\a9\b\f\1>\b\2\a=\a\r\6=\6>\5>\5\4\0049\4/\0035\5B\0005\6?\0003\a@\0=\a\24\0064\a\3\0009\bA\1>\b\1\a9\b\f\1>\b\2\a=\a\r\6=\6C\5>\5\5\0049\4/\0035\5F\0005\6D\0005\aE\0009\b\f\1>\b\2\a=\a\26\0064\a\3\0009\bA\1>\b\1\a9\b\f\1>\b\2\a=\a\r\6=\6G\5>\5\6\0049\4/\0035\5J\0005\6H\0005\aI\0009\b\f\1>\b\2\a=\a\26\0064\a\3\0009\bA\1>\b\1\a9\b\f\1>\b\2\a=\a\r\6=\6K\5>\5\a\0049\4/\0035\5O\0005\6M\0003\aL\0=\a\n\0069\a$\2=\a\24\0065\aN\0009\b\f\1>\b\2\a=\a\26\0064\a\3\0009\bA\1>\b\1\a9\b\f\1>\b\2\a=\a\r\6=\6P\5>\5\b\0049\4/\0035\5S\0005\6Q\0009\a$\2=\a\24\0065\aR\0009\b\f\1>\b\2\a=\a\26\0064\a\3\0009\bA\1>\b\1\a9\b\f\1>\b\2\a=\a\r\6=\6T\5>\5\t\0049\4/\0035\5W\0005\6U\0009\a$\2=\a\24\0065\aV\0009\b\f\1>\b\2\a=\a\26\0064\a\3\0009\bA\1>\b\1\a9\b\f\1>\b\2\a=\a\r\6=\6X\5>\5\n\0049\4/\0035\5\\\0005\6Z\0003\aY\0=\a\n\0065\a[\0009\b\f\1>\b\2\a=\a\26\0064\a\3\0009\b\27\1>\b\1\a9\b\f\1>\b\2\a=\a\r\6=\6]\5>\5\v\0049\4^\0035\5a\0005\6_\0005\a`\0009\b\f\1>\b\2\a=\a\26\0064\a\3\0009\bA\1>\b\1\a9\b\f\1>\b\2\a=\a\r\6=\6T\5>\5\1\0049\4^\0035\5c\0005\6b\0009\a\31\2=\a\24\0064\a\3\0009\bA\1>\b\1\a9\b\f\1>\b\2\a=\a\r\6=\6\"\5>\5\2\0049\4d\0035\5f\0005\6e\0004\a\3\0009\bA\1>\b\1\a9\b\f\1>\b\2\a=\a\r\6=\6g\5>\5\1\0042\0\0ÄK\0\1\0\15BufferIcon\1\0\0\1\0\1\rprovider\15BufferIcon\21short_line_right\1\0\0\1\0\1\rprovider\rFilePath\1\0\0\1\2\0\0\tNONE\1\0\2\rprovider\rFileIcon\14separator\6 \20short_line_left\nSpace\1\0\0\1\2\0\0\tNONE\1\0\1\14separator\6 \0\15FileEncode\1\0\0\1\2\0\0\tNONE\1\0\2\14separator\6 \rprovider\15FileEncode\15BufferType\1\0\0\1\2\0\0\tNONE\1\0\2\14separator\6 \rprovider\rFileIcon\fTabstop\1\0\0\1\2\0\0\tNONE\1\0\1\14separator\6 \0\fPerCent\1\0\0\1\2\0\0\tNONE\1\0\2\rprovider\16LinePercent\14separator\6 \rLineInfo\1\0\0\1\2\0\0\tNONE\1\0\2\rprovider\15LineColumn\14separator\a  \18ShowLspClient\1\0\0\14dark_grey\0\1\0\2\rprovider\17GetLspClient\ticon\tÔÇÖ \19DiagnosticInfo\1\0\0\16info_yellow\1\0\2\rprovider\19DiagnosticInfo\ticon\n ÔÅö \19DiagnosticHint\1\0\0\15vivid_blue\1\0\2\rprovider\19DiagnosticHint\ticon\n ÔÅ™ \19DiagnosticWarn\1\0\0\1\0\2\rprovider\19DiagnosticWarn\ticon\n ÔÅ± \20DiagnosticError\1\0\0\14error_red\1\0\2\rprovider\20DiagnosticError\ticon\n ÔÅó \nright\15DiffRemove\1\0\0\1\0\2\rprovider\15DiffRemove\ticon\n ÔÖÜ \17DiffModified\1\0\0\tblue\1\0\2\rprovider\17DiffModified\ticon\t Êü≥\fDiffAdd\1\0\0\ngreen\18hide_in_width\1\0\2\rprovider\fDiffAdd\ticon\n ÔÉæ \14SFileName\1\0\0\tgrey\21buffer_not_empty\1\0\1\rprovider\rFilePath\fGitIcon\1\0\0\vorange\24separator_highlight\1\2\0\0\tNONE\14condition\24check_git_workspace\1\0\1\14separator\6 \0\ats\14getbufvar\afn\bvim\nprint\vViMode\1\0\0\14highlight\abg\bred\rprovider\1\0\0\0\tleft\1\5\0\0\rNvimTree\nvista\tdbui\vpacker\20short_line_list\fsection\25galaxyline.condition\1\0\18\abg\f#111a25\16info_yellow\f#FFD787\14error_red\f#D68787\bred\f#D75F87\16light_green\f#87AF87\15light_blue\f#85ADD4\ngreen\f#5F865F\15vivid_blue\f#ADD4FB\tcyan\f#87D7D7\tblue\f#87AFAF\16dark_yellow\f#D8AF5F\14dark_grey\f#626262\vyellow\f#FFD787\tgrey\f#D0D0D0\fmagenta\f#D16D9E\vpurple\f#D68787\vorange\f#FFD787\18string_orange\f#CE9178\15galaxyline\frequire\0", "config", "galaxyline.nvim")
time([[Config for galaxyline.nvim]], false)
-- Config for: which-key.nvim
time([[Config for which-key.nvim]], true)
try_loadstring("\27LJ\2\n;\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\14which-key\frequire\0", "config", "which-key.nvim")
time([[Config for which-key.nvim]], false)
-- Config for: nvim-tree.lua
time([[Config for nvim-tree.lua]], true)
try_loadstring("\27LJ\2\n®\1\0\0\a\0\n\0\0176\0\0\0'\2\1\0B\0\2\0029\1\2\0B\1\1\2\15\0\1\0X\2\tÄ6\2\3\0009\2\4\0029\2\5\2'\4\6\0009\5\a\1'\6\b\0&\4\6\0045\5\t\0B\2\3\1K\0\1\0\1\0\1\vdetach\2\b' &\18absolute_path\vopen '\rjobstart\afn\bvim\23get_node_at_cursor\18nvim-tree.lib\frequire°\3\1\0\6\0\19\0\"6\0\0\0009\0\1\0)\1\1\0=\1\2\0006\0\0\0009\0\1\0)\1\1\0=\1\3\0006\0\0\0009\0\1\0005\1\5\0=\1\4\0006\0\0\0009\0\1\0005\1\a\0=\1\6\0006\0\b\0'\2\t\0B\0\2\0029\0\n\0003\1\v\0007\1\f\0006\1\0\0009\1\1\0014\2\3\0005\3\14\0>\3\1\2=\2\r\0016\1\15\0'\3\16\0'\4\17\0'\5\18\0B\1\4\1K\0\1\0\24:NvimTreeToggle<CR>\n<C-a>\5\bmap\1\0\2\bkey\6o\acb\30:lua NvimTreeOSOpen()<cr>\23nvim_tree_bindings\19NvimTreeOSOpen\0\23nvim_tree_callback\21nvim-tree.config\frequire\1\0\3\ffolders\3\1\nfiles\3\1\bgit\3\0\25nvim_tree_show_icons\1\2\0\0\14.DS_Store\21nvim_tree_ignore\25nvim_tree_auto_close\24nvim_tree_auto_open\6g\bvim\0", "config", "nvim-tree.lua")
time([[Config for nvim-tree.lua]], false)
if should_profile then save_profiles() end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
