local status, colorizer = pcall(require, "colorizer")
if not status then
	return
end

colorizer.setup({
	"*",
})

vim.cmd([[ highlight Normal ctermbg=NONE guibg=NONE ]])
vim.cmd([[ highlight NormalNC ctermbg=NONE guibg=NONE ]])
vim.cmd([[ highlight VertSplit ctermbg=NONE guibg=NONE ctermfg=NONE cterm=NONE ]])
vim.cmd([[ highlight NonText ctermbg=NONE guibg=NONE ctermfg=NONE cterm=NONE ]])
vim.cmd([[ highlight StatusLine ctermbg=NONE guibg=NONE ctermfg=NONE cterm=NONE ]])
