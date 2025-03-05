return {
  "folke/snacks.nvim",
  ---@type snacks.Config
  opts = {
    bigfile = {
      size = 10 * 1024 * 1024, -- 10MB
      line_length = 5000, -- average line length (useful for minified files)
    },
  },
}
