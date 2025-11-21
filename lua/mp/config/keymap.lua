-- Set leader keys
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

local keymap = vim.keymap

-- Open the file explorer
keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" })
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" })

-- Working with Lines
keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move selected lines down in visual mode" })
keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move selected lines up in visual mode" })

keymap.set("n", "J", "mzJ`z", { desc = "Join lines without moving the cursor" })

-- Move half a page up or down while keeping the cursor centered
keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Move half a page down while keeping the cursor centered" })
keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Move half a page up while keeping the cursor centered" })

-- Search results stay centered
keymap.set("n", "n", "nzzzv", { desc = "Move to next search result and center" })
keymap.set("n", "N", "Nzzzv", { desc = "Move to previous search result and center" })

-- Clear search highlights
keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

-- Paste over selected text without overwriting the clipboard
keymap.set("x", "<leader>p", [["_dP]], { desc = "Paste over selected text without overwriting the clipboard" })

-- Copy to system clipboard
keymap.set({ "n", "v" }, "<leader>y", [["+y]], { desc = "Copy selection" })
keymap.set("n", "<leader>Y", [["+Y]], { desc = "Copy entire line" })

-- Delete without copying to clipboard
keymap.set({ "n", "v" }, "<leader>d", "\"_d", { desc = "Delete selection without copying to clipboard" })

-- Remap Ctrl+C to behave like Escape in insert mode
keymap.set("i", "<C-c>", "<Esc>", { desc = "Remap <C-c> to <Esc> in insert mode" })

-- Disable the 'Q' key in normal mode (to prevent accidental Ex mode entry)
keymap.set("n", "Q", "<nop>", { desc = "Disable 'Q' key in normal mode" })

-- Open tmux sessionizer
keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>", { desc = "Open tmux sessionizer" })

-- Format buffer using LSP
keymap.set("n", "<leader>f", vim.lsp.buf.format, { desc = "Format buffer using LSP" })

-- Navigate quickfix list with centering
keymap.set("n", "]q", "<cmd>cnext<CR>zz", { desc = "Go to the next quickfix item" })
keymap.set("n", "[q", "<cmd>cprev<CR>zz", { desc = "Go to the previous quickfix item" })

-- Navigate location list with centering
keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz", { desc = "Go to the next location item" })
keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz", { desc = "Go to the previous location item" })

-- Replace the word under cursor with prompt
keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], { desc = "Replace word under cursor" })

-- Make current file executable
keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true, desc = "Make current file executable" })

-- Insert Go-style error handling snippets
keymap.set("n", "<leader>ee", "oif err != nil {<CR>}<Esc>Oreturn err<Esc>")                                   -- Return error block
keymap.set("n", "<leader>ea", "oassert.NoError(err, \"\")<Esc>F\";a")                                         -- Assertion for NoError
keymap.set("n", "<leader>ef", "oif err != nil {<CR>}<Esc>Olog.Fatalf(\"error: %s\\n\", err.Error())<Esc>jj")  -- Fatal log
keymap.set("n", "<leader>el", "oif err != nil {<CR>}<Esc>O.logger.Error(\"error\", \"error\", err)<Esc>F.;i") -- Logger error

-- Run the CellularAutomaton "make it rain" animation
keymap.set("n", "<leader>mr", "<cmd>CellularAutomaton make_it_rain<CR>")

-- Source (reload) Neovim configuration
keymap.set("n", "<leader><leader>", function()
  vim.cmd("so")
end)

