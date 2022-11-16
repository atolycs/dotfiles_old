return function()
	vim.api.nvim_create_augroup('Fern', {})
	vim.api.nvim_create_autocmd({ "buffer" }, {
		group = 'Fern',
		callback = '<Plug>(fern-action-open) <Plug>(fern-action-open:select)',
	})
end
