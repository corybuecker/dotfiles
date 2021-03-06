require('vim.lsp.log') 

vim.api.nvim_create_autocmd("FileType", {
  pattern = { 'elixir' },
  callback = function()
    local client = vim.lsp.start({
       name = 'elixir',
       cmd = {'/Users/corybuecker/.elixir-ls/release/language_server.sh'},
       root_dir = vim.fs.dirname(vim.fs.find({'mix.exs'}, { upward = false })[1]),
    })
    vim.lsp.buf_attach_client(0, client)
  end
})

vim.api.nvim_create_autocmd({ "BufWritePre", "FileWritePre" }, {
  pattern = { "*.ex", "*.exs" },
  
  callback = function()
    vim.lsp.buf.format()
  end
})
