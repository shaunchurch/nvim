vim.api.nvim_set_keymap("n", "<leader>e", "<cmd>:NvimTreeToggle<cr>", { silent = true, noremap = true })

-- move between panes with ctrl + direction
-- deprecated by the nvim/tmux navigation integration plugin
-- vim.keymap.set("n", "<C-l>", "<C-w>l", {})
-- vim.keymap.set("n", "<C-h>", "<C-w>h", {})
-- vim.keymap.set("n", "<C-j>", "<C-w>j", {})
-- vim.keymap.set("n", "<C-k>", "<C-w>k", {})

-- supposedly triggers a config reload, though it doesn't seem to work
-- vim.api.nvim_set_keymap("n", "<leader><CR>", "<cmd>lua ReloadConfig()<CR>", { noremap = true, silent = false })

-- make C+i work by using C-y
vim.keymap.set("n", "<C-y>", "<C-i>", {})

-- make toggle comments with ctrl+/ work - in single line and visual block mode
vim.keymap.set("n", "<C-_>", function()
	return vim.v.count == 0 and "<Plug>(comment_toggle_linewise_current)" or "<Plug>(comment_toggle_linewise_count)"
end, { expr = true })
vim.keymap.set("i", "<C-_>", "<C-o><Plug>(comment_toggle_linewise_current)", {})
vim.keymap.set("v", "<C-_>", "<Plug>(comment_toggle_linewise_visual)")
-- vim.keymap.set("x", "<C-_>", "<Plug>(comment_toggle_linewise_visual)")

-- for the package.json version number checker
vim.keymap.set("n", "<leader>tr", require("package-info").show, {})

-- let's see if we can invent a new "change next "string"" or "change next (brakcets)"
-- vim.keymap.set("n", "cns", 'f"ci"')
-- the simple version searches forward over the current line only
-- the complicated version searches forward over the rest of the document using find and uses the first occurence
-- it's complicated because that leaves a search buffer which we have to jump out of insert mode to clear.
-- seems to happen pretty fast though /shrug
vim.keymap.set("n", "cns", '/"<CR><cmd>:noh<CR>ci"') -- change next string multiline forward
vim.keymap.set("n", "cfs", '/"<CR><cmd>:noh<CR>ci"') -- 'change forward string' change next string multiline forward
vim.keymap.set("n", "cps", '?"<CR><cmd>:noh<CR>ci"') -- 'change previous string' change previous string multiline forward
vim.keymap.set("n", 'cn"', 'f"ci"')
vim.keymap.set("n", "cn(", "f(ci(")
vim.keymap.set("n", "cfb", "/(<CR><cmd>:noh<CR>ci(") -- 'change forward bracket' change next string multiline forward
vim.keymap.set("n", "cfc", "/{<CR><cmd>:noh<CR>ci{") -- 'change forward curly' change next string multiline forward
vim.keymap.set("n", "cfa", "/<<CR><cmd>:noh<CR>ci<") -- 'change forward angle' change next string multiline forward
vim.keymap.set("n", "cfq", "/[<CR><cmd>:noh<CR>ci[") -- 'change forward square' change next string multiline forward
vim.keymap.set("n", "cn{", "f{ci{")
vim.keymap.set("n", "cn[", "f[ci[")
-- this will always clear the search highlight when hitting escape...
vim.keymap.set("n", "<esc>", "<cmd>:noh<CR>")

-- type col in normal mode to collapse the sidebar tree
vim.keymap.set("n", "col", "<cmd>:NvimTreeCollapse<CR>")
