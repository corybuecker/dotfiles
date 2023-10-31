local autocmd = vim.api.nvim_create_autocmd

autocmd("FileType", {
  pattern = "elixir",
  
  callback = function()
    local client = vim.lsp.start({
       name = 'elixir',
       cmd = {'/Users/corybuecker/.elixir-ls/release/language_server.sh'},
       root_dir = vim.fs.dirname(vim.fs.find({'mix.exs'}, { upward = false })[1]),
    })
    
    vim.lsp.buf_attach_client(0, client)
  end
})

local lspautocmd = vim.api.nvim_create_autocmd

lspautocmd('LspAttach', {
  callback = function(args)
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, { buffer = args.buf })
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { buffer = args.buf })
  end,
})

