-- Open the file explorer
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Move selected lines up and down in visual mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv") -- Move the selection down
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv") -- Move the selection up

-- Join lines without moving the cursor
vim.keymap.set("n", "J", "mzJ`z")

-- Move half a page up or down while keeping the cursor centered
vim.keymap.set("n", "<C-d>", "<C-d>zz") -- Move down half a page
vim.keymap.set("n", "<C-u>", "<C-u>zz") -- Move up half a page

-- Search results stay centered
vim.keymap.set("n", "n", "nzzzv") -- Move to next search result and center
vim.keymap.set("n", "N", "Nzzzv") -- Move to previous search result and center

-- Restart LSP
vim.keymap.set("n", "<leader>zig", "<cmd>LspRestart<cr>")

-- Insert a blank line below the current line and restore cursor position
vim.keymap.set("n", "<CR>", "o<Esc>k", { desc = "Insert blank line below" })

-- Insert a blank line above the current line and restore cursor position
vim.keymap.set("n", "<S-CR>", "O<Esc>j", { desc = "Insert blank line above" })

-- Start and stop "vim-with-me" (presumably for collaborative editing)
vim.keymap.set("n", "<leader>vwm", function()
    require("vim-with-me").StartVimWithMe()
end)
vim.keymap.set("n", "<leader>svwm", function()
    require("vim-with-me").StopVimWithMe()
end)

-- Paste over selected text without overwriting the clipboard
vim.keymap.set("x", "<leader>p", [["_dP]])

-- Copy to system clipboard
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y"]]) -- Copy selection
vim.keymap.set("n", "<leader>Y", [["+Y"]]) -- Copy entire line

-- Delete without copying to clipboard
vim.keymap.set({ "n", "v" }, "<leader>d", "\"_d")

-- Remap Ctrl+C to behave like Escape in insert mode
vim.keymap.set("i", "<C-c>", "<Esc>")

-- Disable the 'Q' key in normal mode (to prevent accidental Ex mode entry)
vim.keymap.set("n", "Q", "<nop>")

-- Open tmux sessionizer
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")

-- Format buffer using LSP
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

-- Navigate quickfix list with centering
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz") -- Next quickfix item
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz") -- Previous quickfix item

-- Navigate location list with centering
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz") -- Next location item
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz") -- Previous location item

-- Replace the word under cursor with prompt
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Make current file executable
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- Insert Go-style error handling snippets
vim.keymap.set("n", "<leader>ee", "oif err != nil {<CR>}<Esc>Oreturn err<Esc>") -- Return error block
vim.keymap.set("n", "<leader>ea", "oassert.NoError(err, \"\")<Esc>F\";a") -- Assertion for NoError
vim.keymap.set("n", "<leader>ef", "oif err != nil {<CR>}<Esc>Olog.Fatalf(\"error: %s\\n\", err.Error())<Esc>jj") -- Fatal log
vim.keymap.set("n", "<leader>el", "oif err != nil {<CR>}<Esc>O.logger.Error(\"error\", \"error\", err)<Esc>F.;i") -- Logger error

-- Open Neovim packer configuration
vim.keymap.set("n", "<leader>vpp", "<cmd>e ~/.dotfiles/nvim/.config/nvim/lua/theprimeagen/packer.lua<CR>")

-- Run the CellularAutomaton "make it rain" animation
vim.keymap.set("n", "<leader>mr", "<cmd>CellularAutomaton make_it_rain<CR>")

-- Source (reload) Neovim configuration
vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)

