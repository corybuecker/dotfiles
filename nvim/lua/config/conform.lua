require("conform").setup({
	formatters_by_ft = {
		lua = { "stylua" },
		rust = { "rustfmt" },
		htmldjango = { "djlint" },
		html = { "djlint" },
		swift = { "swift_format" },
		sql = { "pg_format" },
	},
	format_on_save = {
		lsp_format = "fallback",
	},
})
