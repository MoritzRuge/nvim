local map = vim.keymap.set

vim.g.mapleader = " "
vim.g.maplocalleader = "\\"
vim.keymap.set("n", "<leader>cd", vim.cmd.Ex)

-- Typst keybinds
vim.api.nvim_create_autocmd("FileType", {
    pattern = "typst",
    callback = function()
	map("n", "<leader>tw", "<cmd>TypstWatch<CR>", { desc = "Typst watch"})
	map("n", "<leader>tc", "<cmd>TypstCompile<CR>", { desc = "Typst compile"})
	map("n", "<leader>tp", "<cmd>TypstPreview<CR>", { desc = "Typst Preview"})
    end,
})
