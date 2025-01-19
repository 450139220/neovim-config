vim.g.mapleader = " "

local keymap = vim.keymap

-- insert

-- visual

-- normal
-- create new window

-- open file tree
keymap.set("n", "<leader>f", ":NvimTreeToggle<CR>")
-- window buffer switch
keymap.set("n", "<S-h>", ":bprevious<CR>")
keymap.set("n", "<S-l>", ":bnext<CR>")
keymap.set("n", ":bw<CR>", ":bdelete<CR>")
