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

-- Restart LSP
keymap.set("n", "<leader>zig", "<cmd>LspRestart<cr>")

-- Insert a blank line below the current line and restore cursor position
keymap.set("n", "<CR>", "o<Esc>k", { desc = "Insert blank line below" })

-- Insert a blank line above the current line and restore cursor position
keymap.set("n", "<S-CR>", "O<Esc>j", { desc = "Insert blank line above" })

-- Start and stop "vim-with-me" (presumably for collaborative editing)
keymap.set("n", "<leader>vwm", function()
    require("vim-with-me").StartVimWithMe()
end)
keymap.set("n", "<leader>svwm", function()
    require("vim-with-me").StopVimWithMe()
end)

-- Paste over selected text without overwriting the clipboard
keymap.set("x", "<leader>p", [["_dP]])

-- Copy to system clipboard
keymap.set({ "n", "v" }, "<leader>y", [["+y"]]) -- Copy selection
keymap.set("n", "<leader>Y", [["+Y"]])          -- Copy entire line

-- Delete without copying to clipboard
keymap.set({ "n", "v" }, "<leader>d", "\"_d")

-- Remap Ctrl+C to behave like Escape in insert mode
keymap.set("i", "<C-c>", "<Esc>")

-- Disable the 'Q' key in normal mode (to prevent accidental Ex mode entry)
keymap.set("n", "Q", "<nop>")

-- Open tmux sessionizer
keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")

-- Format buffer using LSP
keymap.set("n", "<leader>f", vim.lsp.buf.format)

-- Navigate quickfix list with centering
keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz") -- Next quickfix item
keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz") -- Previous quickfix item

-- Navigate location list with centering
keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz") -- Next location item
keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz") -- Previous location item

-- Replace the word under cursor with prompt
keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Make current file executable
keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

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

print("Keymap configuration loaded")
