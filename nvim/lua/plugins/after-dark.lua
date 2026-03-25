require("kuky").install(
    "Kopihue/after-dark",
    function()
	require("after-dark").setup({
	    transparency = true,
	    bold = false,
	    italic = false,
	})
    end
)
