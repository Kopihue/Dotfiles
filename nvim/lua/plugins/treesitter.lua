require("kuky").install(
    "nvim-treesitter/nvim-treesitter",
    function()
	local ts = require("nvim-treesitter")

	local parsers = {
	    "rust",
	    "python",
	    "lua",
	    "bash",
	    "html",
	    "css",
	    "javascript",
	    "typescript",
	    "markdown",
	    "json",
	    "toml",
	}

	for _, parser in ipairs(parsers) do
	    ts.install(parser)
	end

	vim.api.nvim_create_autocmd('FileType', {
	    pattern = parsers,
	    callback = function() 
		vim.treesitter.start() 

		vim.wo[0][0].foldexpr = 'v:lua.vim.treesitter.foldexpr()'
		vim.wo[0][0].foldmethod = 'expr'
		vim.opt.foldenable = true
		vim.opt.foldlevel = 99

		vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
	    end,
	})
    end
)
