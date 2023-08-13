-- Find project root using root markers
local root_markers = {'Gemfile', 'package.json', '.git/'}
function _G.RunVimTest(cmd_name)
  return function()
    for _, marker in ipairs(root_markers) do
      local marker_file = vim.fn.findfile(marker, vim.fn.expand('%:p:h') .. ';')
      if #marker_file > 0 then
        vim.g['test#project_root'] = vim.fn.fnamemodify(marker_file, ":p:h")
        break
      end
      local marker_dir = vim.fn.finddir(marker, vim.fn.expand('%:p:h') .. ';')
      if #marker_dir > 0 then
        vim.g['test#project_root'] = vim.fn.fnamemodify(marker_dir, ":p:h")
        break
      end
    end

    vim.cmd(':' .. cmd_name)
  end
end

return {
  'vim-test/vim-test',
  dependencies = { { 'kassio/neoterm' } },
  init = function()
    vim.g['test#strategy'] = 'neoterm'
    vim.g['test#neoterm#term_position'] = 'vert'
    vim.g['test#preserve_screen'] = 1
    vim.g['test#javascript#runner'] = 'vitest'
    vim.g.neoterm_shell = 'zsh'
    vim.g.neoterm_automap_keys = ''
    vim.g.neoterm_default_mod = 'vertical'
  end,
  keys = {
    { '<leader>rn', RunVimTest('TestNearest'), desc = "Run nearest test" },
    { '<leader>rt', RunVimTest('TestSuite'), desc = "Run the nearest test suite" },
    { '<leader>rf', RunVimTest('TestFile'), desc = "Run all tests in the current file" },
    { '<leader>rr', RunVimTest('TestLast'), desc = "Run last test again" }
  }
}
