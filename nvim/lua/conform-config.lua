require("conform").setup({
  formatters_by_ft = {
    swift = { "swift_format" },
    elixir = { "mix" },
    xml = { "xmllint" },
    ruby = { "rufo" },
    eruby = { "erb_format" },
  },
})

vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*",
  callback = function(args)
    require("conform").format({ bufnr = args.buf })
  end,
})
