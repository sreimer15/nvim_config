return {
	"andymass/vim-matchup",
	dependencies = { "nvim-treesitter/nvim-treesitter" },
	config = function()
		-- Optional: You can add any specific matchup configurations here
		vim.g.matchup_matchparen_offscreen = { method = "popup" }
	end,
}
