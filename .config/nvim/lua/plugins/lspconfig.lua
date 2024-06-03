return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      gopls = {
        settings = {
          analyses = {
            fieldalignment = false,
          },
        },
      },
    },
  },
}
