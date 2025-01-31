local opt = vim.opt

-- Disable GUI cursor styling (default behavior)
opt.guicursor = ""

-- Enable line numbers
opt.number = true

-- Enable relative line numbers (shows line distance from the cursor)
opt.relativenumber = true

-- Set text width and color column for line length visualization
opt.textwidth = 120     -- Auto-wrap text at 120 characters (if enabled)
opt.colorcolumn = "120" -- Show a vertical ruler at 120 characters (for code formatting)

-- Tabs and indentation
opt.tabstop = 2       -- 2 spaces for tabs (prettier default)
opt.softtabstop = 2   -- 2 spaces for tabs (prettier default)
opt.shiftwidth = 2    -- Number of spaces used for auto-indent
opt.expandtab = true  -- Convert tabs to spaces
opt.autoindent = true -- copy indent from current line when starting new one

-- Enable smart indentation
opt.smartindent = true

-- backspace
opt.backspace = "indent,eol,start" -- allow backspace on indent, end of line or insert mode start position

-- Disable line wrapping
opt.wrap = false

-- Disable swap and backup files
opt.swapfile = false
opt.backup = false

-- Set undo file directory and enable persistent undo history
opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
opt.undofile = true

-- Search settings
opt.hlsearch = false -- Disable persistent search highlight
opt.incsearch = true -- Enable incremental search (highlights matches as you type)

-- Enable true color support in the terminal
opt.termguicolors = true

-- Set scrolling behavior
opt.scrolloff = 8      -- Keep at least 8 lines above/below the cursor when scrolling
opt.signcolumn = "yes" -- Always show the sign column (useful for LSP, Git signs, etc.)

-- Splitting windows behaviour
opt.splitright = true -- split vertical window to the right
opt.splitbelow = true -- split horizontal window to the bottom

-- Append '@-@' to valid filename characters (useful for certain plugins and file handling)
opt.isfname:append("@-@")

-- clipboard
opt.clipboard:append("unnamedplus") -- use system clipboard as default register

-- Reduce update time (affects responsiveness, e.g., for CursorHold events)
opt.updatetime = 50
