return {
	{ "catppuccin/nvim", name = "catppuccin", priority = 1000 },
	"nvim-treesitter/nvim-treesitter",
	{
		"nvim-telescope/telescope-file-browser.nvim",
		dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
	},
	"stevearc/conform.nvim",
	"nvim-tree/nvim-web-devicons",
	"hrsh7th/nvim-cmp",
	"hrsh7th/cmp-buffer",
	"hrsh7th/cmp-nvim-lsp",
}
