vim.api.nvim_set_keymap("n", "<leader>e", "<cmd>:NvimTreeToggle<cr>", { silent = true, noremap = true })

-- move between panes with ctrl + direction
vim.keymap.set("n", "<C-l>", "<C-w>l", {})
vim.keymap.set("n", "<C-h>", "<C-w>h", {})
vim.keymap.set("n", "<C-j>", "<C-w>j", {})
vim.keymap.set("n", "<C-k>", "<C-w>k", {})

