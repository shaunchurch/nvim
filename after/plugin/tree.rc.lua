local tree_cb = require("nvim-tree.config").nvim_tree_callback

require("nvim-tree").setup({
	sort_by = "case_sensitive",
	open_on_setup = false,
	open_on_setup_file = false,
	open_on_tab = false,
	ignore_buffer_on_setup = true,
	respect_buf_cwd = true,
  hijack_unnamed_buffer_when_opening = false,
	view = {
		adaptive_size = true,
		hide_root_folder = true,
		side = "right",
    preserve_window_proportions = true,
		mappings = {
			list = {
				{ key = "u", action = "dir_up" },
				{ key = { "<leftmouse>" }, cb = tree_cb("edit") },
			},
		},
		float = {
			enable = false,
		},
	},
	renderer = {
		group_empty = false,
		highlight_git = true,
	},
	filters = {
		dotfiles = false,
	},
	update_focused_file = {
		enable = true,
	},
})

require("nvim-tree").toggle(false, false)
