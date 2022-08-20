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
-- transparent git gutter status column
vim.cmd([[ highlight SignColumn ctermbg=NONE guibg=NONE ctermfg=NONE cterm=NONE ]])

-- sort out overly dominant lint and error visual_text

vim.cmd([[ highlight DiagnosticVirtualTextError guifg=#503030 guibg=NONE ]])
vim.cmd([[ highlight DiagnosticVirtualTextWarn guifg=#504330 guibg=NONE ]])
vim.cmd([[ highlight DiagnosticVirtualTextInfo guifg=#304b50 guibg=NONE ]])
vim.cmd([[ highlight DiagnosticVirtualTextHint guifg=#305049 guibg=NONE ]])
-- default colors for visual_text:
-- DiagnosticVirtualTextError xxx guifg=#db4b4b guibg=#362C3D
-- DiagnosticVirtualTextWarn xxx guifg=#e0af68 guibg=#373640
-- DiagnosticVirtualTextInfo xxx guifg=#0db9d7 guibg=#22374B
-- DiagnosticVirtualTextHint xxx guifg=#1abc9c guibg=#233745
--
-- telescope windows
vim.cmd([[ highlight TelescopeNormal guibg=NONE ]])
vim.cmd([[ highlight TelescopeBorder guibg=NONE guifg=#233745 ]])

-- indented lines
vim.cmd([[highlight IndentBlanklineIndent1 guifg=#222222 gui=nocombine]])
vim.cmd([[highlight IndentBlanklineContextChar guifg=#444444 gui=nocombine]])

-- nvim tree sidebar bg
vim.cmd([[ highlight NvimTreeNormal guifg=NONE guibg=NONE ]])
vim.cmd([[ highlight NvimTreeNormalNC guifg=NONE guibg=NONE ]])
