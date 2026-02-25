-- functions definitions
local auto_center_buffer_vision = function() 
    vim.cmd("normal! zz")
end

local alert_when_yanked = function()
    if vim.v.event.regname == "+" then
	print("Copiado")
    end
end

-- functions activations
vim.api.nvim_create_autocmd("CursorMoved", {
    callback = auto_center_buffer_vision,
})

vim.api.nvim_create_autocmd("TextYankPost", {
    callback = alert_when_yanked,
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
