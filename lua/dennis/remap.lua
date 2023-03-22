vim.g.mapleader = " "

local keymap = vim.keymap

keymap.set("n", "<leader>dv", ":NERDTreeToggle<CR>",{desc = "Toggle NERDTree"})
keymap.set("n", "<leader>tn", ":tabnew<CR>",{desc = "Open New Tab" })

keymap.set("n", "<leader>wj", "<C-W>j",{desc = "Move to Up window"})
keymap.set("n", "<leader>wh", "<C-W>h",{desc = "Move to Left window"})
keymap.set("n", "<leader>wk", "<C-W>k",{desc = "Move to Down window"})
keymap.set("n", "<leader>wl", "<C-W>l",{desc = "Move to Right window"})

-- move with visual blocks
keymap.set("v","J",":m '>+1<CR>gv=gv",{desc = "Move selected block up" })
keymap.set("v","K",":m '<-2<CR>gv=gv",{desc = "Move selected block down" })

-- cursor in the middle while jumping 
keymap.set("n", "<C-d>", "<C-d>zz",{desc = "Place cursor in middle while jumping down" })
keymap.set("n", "<C-u>", "<C-u>zz",{desc = "Place cursor in middle while jumping up" })

-- "fixxing" paste for crying out loud
keymap.set("x", "<leader>p", "\"_dP",{desc = "Paste from system clipboard" })

-- copy and paste from system clipboard (plus register)
keymap.set("n","<leader>y", "\"+y",{desc = "Copy to system clipboard" })
keymap.set("v","<leader>y", "\"+y",{desc = "Copy to system clipboard" })

-- quickfix 
-- navigation commands
keymap.set("n", "<C-j>", "<cmd>cnext<CR>zz",{desc = "QuickFix: Go to next search"})
keymap.set("n", "<C-k>", "<cmd>cprev<CR>zz",{desc = "QuickFix: Go to prev search"})
-- window commands
keymap.set("n", "<leader>fc", ":cexpr []<CR>",{desc = "QuickFix: Clear search "})
keymap.set("n", "<leader>fo", ":copen<CR>",{desc = "QuickFix: Open Window"})
keymap.set("n", "<leader>fq", ":cclose<CR>",{desc = "QuickFix: Close Window"})
-- places to find
keymap.set("n", "<leader>ff", ":vimgrep  %<left><left>",{desc = "QuickFix: Find in File"})
keymap.set("n", "<leader>fd", ":vimgrep  **<left><left><left>",{desc = "QuickFix: Find in Project"})

