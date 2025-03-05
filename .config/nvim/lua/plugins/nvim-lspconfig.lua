return {
  "neovim/nvim-lspconfig",
  opts = {
    inlay_hints = { enabled = false },
    servers = {
      gopls = {
        settings = {
          gopls = {
            analyses = {
              fieldalignment = false,
            },
            directoryFilters = {
              "-.git",
              "-.vscode",
              "-.idea",
              "-.vscode-test",
              "-node_modules",
              "-bazel-bin",
              "-bazel-out",
              "-bazel-testlogs",
              "-bazel-entropy",
            },
          },
        },
      },
    },
  },
}
