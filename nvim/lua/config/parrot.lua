require("parrot").setup({
	providers = {
		anthropic = {
			api_key = os.getenv("ANTHROPIC_API_KEY"),
		},
	},
})
