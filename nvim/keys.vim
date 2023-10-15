inoremap <silent><expr> <cr> coc#pum#visible() ? coc#_select_confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
nmap <silent> gd <Plug>(coc-definition)
nmap <Leader>fd :Telescope fd<CR>
nmap <Leader>fb :Telescope file_browser<CR>
