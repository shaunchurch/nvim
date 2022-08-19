function _G.ReloadConfig()
	vim.notify("yoyo")
	for name, _ in pairs(package.loaded) do
		if name:match("^after") and name:match("^lua") and not name:match("nvim-tree") then
			package.loaded[name] = nil
		end
	end

	dofile(vim.env.MYVIMRC)
	vim.notify("Nvim configuration reloaded!", vim.log.levels.INFO)
end
