local status, colorizer = pcall(require, "colorizer")
if not status then
	return
end

colorizer.setup({
	"*",
})

-- Many random color manipulations
-- get me my transparent background at all costs
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
vim.cmd([[ highlight TelescopeBorder guibg=NONE guifg=#494e61 ]])

-- indented lines
vim.cmd([[highlight IndentBlanklineIndent1 guifg=#222222 gui=nocombine]])
vim.cmd([[highlight IndentBlanklineContextChar guifg=#444444 gui=nocombine]])

-- nvim tree sidebar bg
vim.cmd([[ highlight NvimTreeNormal guifg=NONE guibg=NONE ]])
vim.cmd([[ highlight NvimTreeNormalNC guifg=NONE guibg=NONE ]])

-- OVERRIDE: this takes over ALL "strings" which were ugly in the theme
-- vim.cmd([[ highlight String guifg=#fed7aa ]])
-- vim.cmd([[ highlight String guifg=#93c5fd ]])
-- vim.cmd([[ highlight String guifg=#f5d0fe ]])
vim.cmd([[ highlight String guifg=#d59abc ]])
-- vim.cmd([[ highlight String guifg=#bcb88f]])
