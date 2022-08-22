vim.cmd("autocmd!")

-- macos only
vim.opt.clipboard:append({ "unnamedplus" })

vim.scriptencoding = "utf-8"
vim.opt.encoding = "utf-8"
vim.opt.fileencoding = "utf-8"
vim.opt.mouse = "a"

vim.wo.number = true
vim.opt.title = true
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.smartcase = true
vim.opt.hlsearch = true
vim.opt.backup = false
vim.opt.showcmd = true
vim.opt.cmdheight = 1
vim.opt.laststatus = 2
vim.opt.expandtab = true
vim.opt.scrolloff = 10
vim.opt.ignorecase = true -- Case insensitive searching UNLESS /C or capital in search
vim.opt.smarttab = true
vim.opt.breakindent = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.wrap = false -- No Wrap lines
vim.opt.backspace = { "start", "eol", "indent" }
vim.opt.path:append({ "**" }) -- Finding files - Search down into subfolders
vim.opt.wildignore:append({ "*/node_modules/*" })
vim.opt.relativenumber = true

vim.opt.formatoptions:append({ "r" })

-- Undercurl
vim.cmd([[let &t_Cs = "\e[4:3m"]])
vim.cmd([[let &t_Ce = "\e[4:0m"]])

vim.cmd([[autocmd FileType netrw setl bufhidden=delete]])

-- Wow, removing the background color is tricky, huh
-- vim.api.nvim_exec([[ highlight Normal ctermbg=NONE guibg=NONE ]], false)
-- vim.cmd([[ highlight Normal ctermbg=NONE guibg=NONE ]])
-- There we go!
-- Oh wait, no these don't work at all
--vim.highlight.create('Normal', { ctermbg = "NONE", guibg = "NONE" }, false)
-- vim.highlight.create('NonText', { ctermbg = "NONE", guibg = "NONE" }, false)
--vim.highlight.create('NormalNC', { ctermbg = "NONE", guibg = "NONE" }, false)
