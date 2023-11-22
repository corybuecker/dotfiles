require('vim.lsp.log') 

local cmp = require('cmp')
cmp.setup({
  snippet = {
    expand = function(args)
      vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
    end,
  },
  mapping = cmp.mapping.preset.insert({
    ['<C-b>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.abort(),
    ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
  }),
  sources = cmp.config.sources({
    { name = 'nvim_lsp' },
    { name = 'vsnip' }, -- For vsnip users.
  }, {
    { name = 'buffer' },
  })
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = { 'elixir' },
  callback = function()
    local capabilities = require('cmp_nvim_lsp').default_capabilities()
    
    local client = vim.lsp.start({
       name = 'elixir',
       cmd = {'/Users/corybuecker/.elixir-ls/release/language_server.sh'},
       root_dir = vim.fs.dirname(vim.fs.find({'mix.exs'}, { upward = false })[1]),
       capabilities = capabilities,
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
