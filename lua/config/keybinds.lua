vim.g.mapleader = " "
vim.keymap.set("n", "<leader>cd", vim.cmd.Ex)
vim.api.nvim_set_keymap('i', 'jj', '<Esc>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', 'jk', '<Esc>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', 'kk', '<Esc>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', 'kj', '<Esc>', { noremap = true, silent = true })

-- cursor doesnt move when hitting j
vim.keymap.set("n", "J", "mzJ'z")

-- Keeps search terms in the middle
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
