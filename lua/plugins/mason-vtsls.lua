-- Ensure vtsls is installed via Mason
return {
  {
    "mason-org/mason.nvim",
    opts = {
      ensure_installed = {
        "vtsls",
      },
    },
  },
}
