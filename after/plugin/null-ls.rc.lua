local null_ls_status_ok, null_ls = pcall(require, "null-ls")
if not null_ls_status_ok then
	return
end

null_ls.setup({
	debug = false,
	sources = {
		null_ls.builtins.formatting.stylua,
		-- null_ls.builtins.diagnostics.eslint,
		null_ls.builtins.formatting.prettierd,
		null_ls.builtins.diagnostics.eslint_d.with({
			-- diagnostics_format = "[eslint] #{m}\n(#{c})",
			diagnostics_format = "#{m}\n(#{c})",
		}),
		null_ls.builtins.code_actions.gitsigns,
		--    null_ls.builtins.code_actions.refactoring,
		null_ls.builtins.completion.luasnip,
		null_ls.builtins.diagnostics.alex,
--		null_ls.builtins.diagnostics.ansiblelint,
	},
	on_attach = function(client)
		if client.server_capabilities.documentFormattingProvider then
			vim.cmd("nnoremap <silent><buffer> <Leader>f :lua vim.lsp.buf.formatting()<CR>")

			-- format on save
			vim.cmd("autocmd BufWritePost <buffer> lua vim.lsp.buf.formatting()")
		end

		if client.server_capabilities.documentRangeFormattingProvider then
			vim.cmd("xnoremap <silent><buffer> <Leader>f :lua vim.lsp.buf.range_formatting({})<CR>")
		end
	end,
})
