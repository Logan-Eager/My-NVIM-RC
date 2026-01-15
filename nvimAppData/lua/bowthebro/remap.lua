vim.g.mapleader = " "

-- pivot to file explorer
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- move selected line / block of text in visual mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Join line below
vim.keymap.set("n", "J", "mzJ`z")

-- keep cursor in middle of screen when scrolling
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "<C-d>", "<C-d>zz")

-- keep search results in middle of screen
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- aligns the current paragraph
vim.keymap.set("n", "=ap", "ma=ap'a")

-- restarts lsp
vim.keymap.set("n", "<leader>zig", "<cmd>LspRestart<cr>")

-- Paste over currently selected text without yanking it 
vim.keymap.set("x", "<leader>p", [["_dP]])

-- Yank to system clipboard
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])

-- paste from system clipboard
vim.keymap.set("n", "<leader>P", [["+P]])

-- delete to void register
vim.keymap.set({ "n", "v" }, "<leader>d", "\"_d")

-- disable ex mode
vim.keymap.set("n", "Q", "<nop>")

-- centres search results when navigating quickfix and location lists
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- replace word under cursor, essentially f2
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- opens trouble 
vim.keymap.set("n", "<leader>xx", "<cmd>Trouble diagnostics toggle<cr>", { desc = "Workspace Diagnostics"})

-- source current file
vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)

