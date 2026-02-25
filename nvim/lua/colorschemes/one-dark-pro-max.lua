return {
    "Kopihue/one-dark-pro-max",
    name = "one-dark-pro-max",
    config = function()
	require("one-dark-pro-max").setup({
	    transparency = true,
	    bold = false,
	    italic = false,
	})

        vim.cmd("colorscheme one-dark-pro-max")
    end
}
