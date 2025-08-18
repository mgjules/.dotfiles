return {
  "folke/snacks.nvim",
  ---@type snacks.Config
  opts = {
    bigfile = {
      size = 100 * 1024 * 1024, -- 10MB
      line_length = 5000000, -- average line length (useful for minified files)
    },
  },
}
