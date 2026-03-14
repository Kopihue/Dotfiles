return {
    "neovim/nvim-lspconfig",
    config = function()
	local languages = {
	    "lua_ls",
	    "pyright",
	    "html",
	    "cssls",
	    "ts_ls",
	    "jsonls",
	    "vimls",
	    "rust_analyzer",
	    "bashls",
	}

	for _, language in ipairs(languages) do
	    vim.lsp.enable(language)
	end
    end,
}
