require('vim.lsp.log') 

local cmp_capabilities = require('cmp_nvim_lsp').default_capabilities()
local lspconfig = require('lspconfig')

lspconfig.rust_analyzer.setup({
  capabilities = cmp_capabilities
})
-- vim.api.nvim_create_autocmd("FileType", {
--   pattern = { 'elixir', 'heex' },
--   callback = function()
--     local client = vim.lsp.start({
--        name = 'elixir',
--        cmd = {'/Users/corybuecker/.elixir-ls/language_server.sh'},
--        root_dir = vim.fs.dirname(vim.fs.find({'mix.exs'}, { upward = false })[1]),
--     })

--     vim.lsp.buf_attach_client(0, client)
--   end
-- })

-- vim.api.nvim_create_autocmd("FileType", {
--   pattern = { 'swift' },
--   callback = function()
--     local root_dir = vim.fs.dirname(vim.fs.find({
--  			"buildServer.json",
--  		}, { upward = true })[1])
    
--     local client = vim.lsp.start({
--        name = 'sourcekit',
--        cmd = {'/usr/bin/sourcekit-lsp'},
--        root_dir = root_dir,
--     })

--     vim.lsp.buf_attach_client(0, client)
--   end
-- })

-- vim.api.nvim_create_autocmd("FileType", {
--   pattern = { 'ruby' },
--   callback = function()
--     local root_dir = vim.fs.dirname(vim.fs.find({
--  			"Gemfile.lock",
--  		}, { upward = true })[1])
    
--     local client = vim.lsp.start({
--        name = 'sorbet',
--        cmd = {'/Users/corybuecker/.rbenv/shims/bundle', 'exec', 'srb', 'tc', '--lsp'},
--        root_dir = root_dir,
--     })

--     vim.lsp.buf_attach_client(0, client)
--   end
-- })

-- vim.api.nvim_create_autocmd("FileType", {
--   pattern = { 'javascript', 'typescript' },
--   callback = function()
--     local root_dir = vim.fs.dirname(vim.fs.find({ "package.json" })[1])
    
--     local client = vim.lsp.start({
--        name = 'typescript-language-server',
--        cmd = {'npx', 'typescript-language-server', '--stdio'},
--        root_dir = root_dir,
--     })

--     vim.lsp.buf_attach_client(0, client)
--   end
-- })

-- vim.api.nvim_create_autocmd("FileType", {
--   pattern = { 'svelte' },
--   callback = function()
--     local root_dir = vim.fs.dirname(vim.fs.find({ "package.json" })[1])

--     local client = vim.lsp.start({
--        name = 'svelte-language-server',
--        cmd = {'npx', 'svelteserver', '--stdio'},
--        root_dir = root_dir,
--     })

--     vim.lsp.buf_attach_client(0, client)
--   end
-- })

-- vim.api.nvim_create_autocmd("FileType", {
--   pattern = { 'rust' },
--   callback = function()
--     local root_dir = vim.fs.dirname(vim.fs.find({ "Cargo.toml" }, { upward = true })[1])

--     local client = vim.lsp.start({
--        name = 'rust-analyzer',
--        cmd = {'rust-analyzer'},
--        root_dir = root_dir,
--     })

--     vim.lsp.buf_attach_client(0, client)
--     vim.lsp.inlay_hint.enable(true)
--   end
-- })
