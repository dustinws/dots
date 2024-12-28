vim.g.mapleader = " "

vim.keymap.set("i", "jj", "<Esc>", { desc = "Exit insert mode with jj" })
vim.keymap.set("n", "nh", ":nohl<CR>", { desc = "Clear highlights with nh" })

vim.keymap.set("n", "<leader>wc", ":w<CR>", { desc = "Write the current buffer" })
vim.keymap.set("n", "<leader>wa", ":wa<CR>", { desc = "Write all open buffers" })
vim.keymap.set("n", "<leader>q", ":q<CR>", { desc = "Quit" })

vim.keymap.set("n", "<leader>ns", ":source ~/.config/nvim/init.lua<CR>", { desc = "Source the nvim configuration" })

vim.keymap.set("v", "<leader>fmt", ":!column -t -s '|' -o '|'<CR>", { desc = "format the selected markdown table" })

vim.keymap.set("n", "<leader>rgm", ":! go run main.go<CR>", { desc = "Run the main.go file" })

vim.keymap.set("n", "<leader>fc", ":foldclose<CR>", { desc = "Close a fold" })
vim.keymap.set("n", "<leader>fo", ":foldopen<CR>", { desc = "Open a fold" })

vim.cmd([[
    vnoremap <C-k> :m '<-2<CR>gv=gv
    vnoremap <C-j> :m '>+1<CR>gv=gv
]])
