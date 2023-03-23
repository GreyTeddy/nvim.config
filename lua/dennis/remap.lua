vim.g.mapleader = " "

local keymap = vim.keymap

keymap.set("n", "<leader>wj", "<C-W>j",{desc = "Move to Up Window"})
keymap.set("n", "<leader>wh", "<C-W>h",{desc = "Move to Left Window"})
keymap.set("n", "<leader>wk", "<C-W>k",{desc = "Move to Down Window"})
keymap.set("n", "<leader>wl", "<C-W>l",{desc = "Move to Right Window"})

-- move with visual blocks
keymap.set("v","J",":m '>+1<CR>gv=gv",{desc = "Move selected block up" })
keymap.set("v","K",":m '<-2<CR>gv=gv",{desc = "Move selected block down" })

-- cursor in the middle while jumping 
keymap.set("n", "<C-d>", "<C-d>zz",{desc = "Place cursor in middle while jumping down" })
keymap.set("n", "<C-u>", "<C-u>zz",{desc = "Place cursor in middle while jumping up" })

-- "fixxing" paste for crying out loud
keymap.set("x", "<leader>p", "\"_dP",{desc = "Paste from System Clipboard" })

-- copy and paste from system clipboard (plus register)
keymap.set("n","<leader>y", "\"+y",{desc = "Copy to System Clipboard" })
keymap.set("v","<leader>y", "\"+y",{desc = "Copy to System Clipboard" })

-- quickfix 
-- navigation commands
keymap.set("n", "<leader>qj", "<cmd>cnext<CR>zz",{desc = "[q]uickFix: Go to next [j] search"})
keymap.set("n", "<leader>qk", "<cmd>cprev<CR>zz",{desc = "[q]uickFix: Go to prev [k] search"})
-- Window commands
keymap.set("n", "<leader>qc", ":cexpr []<CR>",{desc = "[q]uickFix: [c]lear search"})
keymap.set("n", "<leader>qo", ":copen<CR>",{desc = "[q]uickFix: [o]pen Window"})
keymap.set("n", "<leader>qq", ":cclose<CR>",{desc = "[q]uickFix: [c]lose Window"})
-- places to find
keymap.set("n", "<leader>qf", ":vimgrep  %<left><left>",{desc = "[q]uickFix: Find in [f]ile"})
keymap.set("n", "<leader>qd", ":vimgrep  **<left><left><left>",{desc = "[q]uickFix: Find in Project [d]irectory"})

