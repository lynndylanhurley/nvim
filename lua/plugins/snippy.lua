return {
  'dcampos/nvim-snippy',
  dependencies = {
    { 'honza/vim-snippets' },
    { 'dcampos/cmp-snippy' }
  },
  config = function()
    -- vim.api.nvim_set_keymap('i', '<Tab>', "snippy#can_expand_or_advance() ? '<Plug>(snippy-expand-or-next)' : '<Tab>'", { expr = true })
    -- vim.api.nvim_set_keymap('i', '<S-Tab>', "snippy#can_jump(-1) ? '<Plug>(snippy-previous)' : '<Tab>'", { expr = true })
    -- vim.api.nvim_set_keymap('s', '<Tab>', "snippy#can_jump(1) ? '<Plug>(snippy-next)' : '<Tab>'", { expr = true })
    -- vim.api.nvim_set_keymap('s', '<S-Tab>', "snippy#can_jump(-1) ? '<Plug>(snippy-previous)' : '<S-Tab>'", { expr = true })
    -- vim.api.nvim_set_keymap('x', '<Tab>', '<Plug>(snippy-cut-text)', {})
  end
}
