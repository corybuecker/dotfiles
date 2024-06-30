vim.keymap.set('n', '<leader>fb', ':Telescope file_browser path=%:p:h <CR>')
vim.keymap.set('n', '<leader>tf', ':TestFile<CR>')
vim.keymap.set('n', '<leader>rs', ':lua vim.cmd.RunSwift()<CR>')
vim.keymap.set('n', '<leader>b', ':buffers<CR>:buffer<Space>')

vim.api.nvim_create_autocmd('LspAttach', {
  callback = function(args)
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { buffer = args.buf })
    vim.lsp.inlay_hint.enable(true)
  end
})

vim.api.nvim_create_user_command('RunSwift',
  function()
    vim.cmd('w')
    vim.cmd('!swift %')
  end,
  {}
)
