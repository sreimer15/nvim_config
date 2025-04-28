local opts = { noremap = true, silent = true, buffer = bufnr }
vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.softtabstop = 2
vim.opt.clipboard = "unnamedplus"
vim.wo.relativenumber = true
vim.wo.number = true
