require("kuky").install(
    "neovim/nvim-lspconfig",
    function()
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

	vim.diagnostic.config({
	    underline = false,
	    signs = true,
	})
    end
)
