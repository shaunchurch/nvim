local status, notify = pcall(require, "notify")
if not status then
	return
end

-- we need to use black to get transparency, apparently.
notify.setup({
  background_color = "#000000"
})

vim.notify = notify

