require("kuky").install(
    'saghen/blink.cmp',
    function()
	require("blink.cmp").setup({
	    keymap = {
		preset = "super-tab",
	    },

	    completion = {
		documentation = {
		    auto_show = true,
		    auto_show_delay_ms = 10,
		}
	    }
	})
    end,
    {
	'rafamadriz/friendly-snippets'
    }
)
