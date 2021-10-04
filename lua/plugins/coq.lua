local module = {}

function module.init(use)
  use {
   'ms-jpq/coq_nvim',
    branch = 'coq',
    requires = {
      -- {'ms-jpq/coq.artifacts', branch = 'artifacts'},
      -- {'ms-jpq/coq.thirdparty', branch = '3p'}
    },
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
end

return module
