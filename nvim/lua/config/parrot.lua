require("parrot").setup({
	providers = {
		anthropic = {
			api_key = os.getenv("ANTHROPIC_API_KEY"),
		},
		openai = {
			api_key = os.getenv("OPENAI_API_KEY"),
		},
	},
})
