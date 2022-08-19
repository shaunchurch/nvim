vim.api.nvim_set_keymap("n", "<leader>e", "<cmd>:nvimtreetoggle<cr>", { silent = true, noremap = true })

-- move between panes with ctrl + direction
vim.keymap.set("n", "<C-l>", "<C-w>l", {})
vim.keymap.set("n", "<C-h>", "<C-w>h", {})
vim.keymap.set("n", "<C-j>", "<C-w>j", {})
vim.keymap.set("n", "<C-k>", "<C-w>k", {})

-- supposedly triggers a config reload, though it doesn't seem to work for the theme
-- vim.api.nvim_set_keymap("n", "<leader><CR>", "<cmd>lua ReloadConfig()<CR>", { noremap = true, silent = false })

-- make C+i work
vim.keymap.set("n", "<C-y>", "<C-i>", {})

-- make toggle comments with ctrl+/ work - in single line and visual block mode
vim.keymap.set("n", "<C-_>", function()
	return vim.v.count == 0 and "<Plug>(comment_toggle_linewise_current)" or "<Plug>(comment_toggle_linewise_count)"
end, { expr = true })
vim.keymap.set("i", "<C-_>", "<C-o><Plug>(comment_toggle_linewise_current)", {})
vim.keymap.set("v", "<C-_>", "<Plug>(comment_toggle_linewise_visual)")
-- vim.keymap.set("x", "<C-_>", "<Plug>(comment_toggle_linewise_visual)")
