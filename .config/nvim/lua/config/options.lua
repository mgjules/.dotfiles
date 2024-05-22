-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.g.ruby_host_prog = "~/.asdf/shims/neovim-ruby-host"

vim.opt.clipboard:append({ "unnamedplus" })
vim.opt.scrolloff = 10
vim.opt.relativenumber = false

vim.filetype.add({ extension = { templ = "templ" } })
