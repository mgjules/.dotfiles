-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.g.ruby_host_prog = "~/.asdf/shims/neovim-ruby-host"

vim.opt.clipboard:append({ "unnamedplus" })
vim.opt.scrolloff = 10
vim.opt.relativenumber = false

-- Set to false to disable auto format
vim.g.lazyvim_eslint_auto_format = true

-- Enable the option to require a Prettier config file
-- If no prettier config file is found, the formatter will not be used
vim.g.lazyvim_prettier_needs_config = true

vim.filetype.add({ extension = { templ = "templ" } })
