return {
  'ms-jpq/coq_nvim',
  branch = 'coq',
  config = function()
    vim.g.coq_settings = {
      auto_start = 'shut-up',
      keymap = {
        recommended = false,
        pre_select = true,
        eval_snippets = '<leader>j'
      }
    }
  end
}
