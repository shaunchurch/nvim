local status, lualine = pcall(require, "lualine")
if not status then
	return
end

local custom_theme = require("lualine.themes.ayu_dark")

custom_theme.normal.c.fg = "#999999"
custom_theme.normal.c.bg = "#000000"

lualine.setup({
	-- options = { theme = "github_dark_default" },
	-- options = { theme = "ayu_dark" },
	-- options = { theme = "tokyonight" },
	options = { theme = custom_theme },
	sections = {
		--lualine_a = {},  -- vim status mode
		--lualine_b = {}, -- actually git info
		lualine_y = {}, -- percentage through file
		lualine_z = {}, -- cursor position char/line.
		--lualine_c = {}, -- file name on left
		lualine_x = {},
	},
})

