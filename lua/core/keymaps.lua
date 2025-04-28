vim.keymap.set("n", "<leader>v", ":vsplit<CR>")
vim.keymap.set("n", "<leader>s", ":split<CR>")

-- Horizontal split with leader+h (if you want that too)
vim.keymap.set("n", "<leader>h", "<C-w>h") -- leader+h to move left
vim.keymap.set("n", "<leader>l", "<C-w>l") -- leader+l to move right
vim.keymap.set("n", "<leader>j", "<C-w>j") -- leader+j to move down
vim.keymap.set("n", "<leader>k", "<C-w>k") -- leader+k to move up
vim.keymap.set("n", "gh", vim.lsp.buf.hover, { noremap = true, silent = true })
vim.keymap.set("n", "<leader>d", vim.diagnostic.open_float)
