-- if vim.g.snippets ~= "" then
-- 	return
-- end
--
local ls = require("luasnip")
local types = require("luasnip.util.types")
local snip = ls.snippet;
local node = ls.snippet_node
local text = ls.text_node
local insert = ls.insert_node
local func = ls.function_node
local choice = ls.choice_node
local dynamicn = ls.dynamic_node

-- ls.config.set_config({
ls.setup({
	history = false,
	updatevents = "TextChanged,TextChangedI",
	enable_autosnippets = true,
	ext_opts = {
		[types.choiceNode] = {
			active = {
				virt_text = { { "<-", "Error" } },
			},
		},
	},
})

-- expand current item or jump to the next item within the snippet
vim.keymap.set("i", "<c-k>", function()
	if ls.expand_or_jumpable() then
		ls.expand_or_jump()
	end
end, { silent = true })

vim.keymap.set("i", "<c-j>", function()
	if ls.jumpable(-1) then
		ls.jump(-1)
	end
end, { silent = true })

vim.keymap.set("i", "<c-j>", function()
	if ls.choice_active() then
		ls.change_change(1)
	end
end, { silent = true })

vim.keymap.set("n", "<leader>'s", "<cmd>source ~/.config/nvim/after/plugin/luasnip.lua<CR>")

-- ls.snippets = {
-- 	all = {
-- 		ls.parser.parse_snippet("somethin", "-- this was expanded!"),
-- 	},
-- 	lua = {
-- 		-- lua specific
-- 	},
-- }
-- ls.add_snippets(nil, {
-- 	all = {
-- 		snip({
-- 			trig = "date",
-- 			namr = "Date",
-- 			dscr = "Date in the form of YYYY-MM-DD",
-- 		}, {
-- 			func(date, {}),
-- 		}),
-- 	},
-- })

