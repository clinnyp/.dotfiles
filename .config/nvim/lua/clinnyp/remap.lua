vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.NvimTreeToggle)


vim.keymap.set("i", "<C-c>", "<Esc>")
vim.keymap.set("n", "<leader>ls", vim.lsp.buf.format)

vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)
