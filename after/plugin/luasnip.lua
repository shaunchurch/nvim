-- if vim.g.snippets ~= "" then
-- 	return
-- end
--
local ls = require("luasnip")
local types = require("luasnip.util.types")

ls.config.set_config({
	history = true,
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



print("Loaded snippets.")
