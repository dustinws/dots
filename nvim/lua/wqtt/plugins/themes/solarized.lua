return {
	"maxmx03/solarized.nvim",
	lazy = false,
	priority = 1000,
	setup = function()
		require("solarized").setup({
			transparent = true,
		})
	end,
}
