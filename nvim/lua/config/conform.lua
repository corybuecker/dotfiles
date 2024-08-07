require("conform").setup({
	formatters_by_ft = {
		lua = { "stylua" },
		rust = { "rustfmt" },
		htmldjango = { "djlint" },
	},
	format_on_save = {
		lsp_format = "fallback",
	},
})
