require("vim.lsp.log")
local capabilities = require("cmp_nvim_lsp").default_capabilities(vim.lsp.protocol.make_client_capabilities())

vim.api.nvim_create_autocmd("FileType", {
	pattern = "rust",
	callback = function(ev)
		local client = vim.lsp.start({
			name = "rust-analyzer",
			cmd = { "rust-analyzer" },
			root_dir = vim.fs.root(ev.buf, { "Cargo.toml" }),
			capabilities = capabilities,
		})

		vim.lsp.buf_attach_client(ev.buf, client)

		vim.keymap.set("n", "gd", vim.lsp.buf.definition, { buffer = ev.buf })
		vim.keymap.set("n", "ga", vim.lsp.buf.code_action, { buffer = ev.buf })

		vim.lsp.inlay_hint.enable(true)
	end,
})
