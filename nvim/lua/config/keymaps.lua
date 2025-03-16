vim.keymap.set("n", "<leader>fb", require("fzf-lua").files)
vim.keymap.set("n", "<leader>b", require("fzf-lua").buffers)
vim.keymap.set("n", "gn", vim.diagnostic.goto_next)
