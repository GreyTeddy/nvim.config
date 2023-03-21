vim.g.mapleader = " "

local keymap = vim.keymap

keymap.set("n", "<leader>dv", ":NERDTreeToggle<CR>")
keymap.set("n", "<leader>tn", ":tabnew<CR>")

keymap.set("n", "<leader>wj", "<C-W>j")
keymap.set("n", "<leader>wh", "<C-W>h")
keymap.set("n", "<leader>wk", "<C-W>k")
keymap.set("n", "<leader>wl", "<C-W>l")

-- move with visual blocks
keymap.set("v","J",":m '>+1<CR>gv=gv")
keymap.set("v","K",":m '<-2<CR>gv=gv")

-- cursor in the middle while jumping 
keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")

-- "fixxing" paste for crying out loud
keymap.set("x", "<leader>p", "\"_dP")

-- copy and paste from system clipboard (plus register)
keymap.set("n","<leader>y", "\"+y")
keymap.set("v","<leader>y", "\"+y")
keymap.set("n","<leader>Y", "\"+Y")

-- quickfix 
-- navigation commands
keymap.set("n", "<C-j>", "<cmd>cnext<CR>zz")
keymap.set("n", "<C-k>", "<cmd>cprev<CR>zz")
-- window commands
keymap.set("n", "<leader>fc", ":cexpr []<CR>")
keymap.set("n", "<leader>fo", ":copen<CR>")
keymap.set("n", "<leader>fq", ":cclose<CR>")
-- places to find
keymap.set("n", "<leader>ff", ":vimgrep  %<left><left>")
keymap.set("n", "<leader>fd", ":vimgrep  **<left><left><left>")

