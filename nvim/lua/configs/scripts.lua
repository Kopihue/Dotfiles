vim.api.nvim_create_autocmd('UIEnter', {
  callback = function()
    vim.o.clipboard = 'unnamedplus'
  end,
})

vim.api.nvim_create_autocmd("CursorMoved", {
    callback = function()
	vim.cmd("normal! zz")
    end
})

vim.api.nvim_create_autocmd("TextYankPost", {
    callback = function()
	vim.notify("Copied.")
    end
})

-- disable lsp syntax highlighting
vim.api.nvim_create_autocmd("LspAttach", {
    callback = function(args)
	local client = vim.lsp.get_client_by_id(args.data.client_id)
	if client then
	    client.server_capabilities.semanticTokensProvider = nil
	end
    end,
})

-- Plugins tests
