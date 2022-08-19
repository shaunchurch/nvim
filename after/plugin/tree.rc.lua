require("nvim-tree").setup({
	sort_by = "case_sensitive",
	open_on_setup = false,
	open_on_setup_file = false,
	ignore_buffer_on_setup = true,
	view = {
		adaptive_size = true,
		hide_root_folder = true,
		side = "right",
		mappings = {
			list = {
				{ key = "u", action = "dir_up" },
			},
		},
		float = {
			enable = true,
		},
	},
	renderer = {
		group_empty = true,
	},
	filters = {
		dotfiles = false,
	},
})

--require("nvim-tree").toggle(false, true)
