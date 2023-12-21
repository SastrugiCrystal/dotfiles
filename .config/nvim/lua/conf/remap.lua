vim.g.mapleader = " "
vim.keymap.set("n","<leader>pv", vim.cmd.Ex)


-- Make a File executable
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)
