require('vim.lsp.log') 

vim.api.nvim_create_autocmd("FileType", {
  pattern = { 'elixir', 'heex' },
  callback = function()
    local client = vim.lsp.start({
       name = 'elixir',
       cmd = {'/Users/corybuecker/.elixir-ls/release/language_server.sh'},
       root_dir = vim.fs.dirname(vim.fs.find({'mix.exs'}, { upward = false })[1]),
    })

    vim.lsp.buf_attach_client(0, client)
  end
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = { 'swift' },
  callback = function()
    local root_dir = vim.fs.dirname(vim.fs.find({
 			"buildServer.json",
 		}, { upward = true })[1])
    
    local client = vim.lsp.start({
       name = 'sourcekit',
       cmd = {'/usr/bin/sourcekit-lsp'},
       root_dir = root_dir,
    })

    vim.lsp.buf_attach_client(0, client)
  end
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = { 'ruby' },
  callback = function()
    local root_dir = vim.fs.dirname(vim.fs.find({
 			"Gemfile.lock",
 		}, { upward = true })[1])
    
    local client = vim.lsp.start({
       name = 'sorbet',
       cmd = {'/Users/corybuecker/.rbenv/shims/bundle', 'exec', 'srb', 'tc', '--lsp'},
       root_dir = root_dir,
    })

    vim.lsp.buf_attach_client(0, client)
  end
})
