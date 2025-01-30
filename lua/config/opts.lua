-- Disable GUI cursor styling (default behavior)
vim.opt.guicursor = ""

-- Enable line numbers
vim.opt.number = true
-- Enable relative line numbers (shows line distance from the cursor)
vim.opt.relativenumber = true

-- Set tab behavior
vim.opt.tabstop = 4        -- Number of spaces per tab
vim.opt.softtabstop = 4    -- Number of spaces pe
vim.opt.guicursor = ""

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.textwidth = 120
vim.opt.colorcolumn = 120
ab in insert mode
vim.opt.shiftwidth = 4     -- Number of spaces used for auto-indent
vim.opt.expandtab = true   -- Convert tabs to spaces

-- Enable smart indentation
vim.opt.smartindent = true

-- Disable line wrapping
vim.opt.wrap = false

-- Disable swap and backup files
vim.opt.swapfile = false
vim.opt.backup = false
-- Set undo file directory and enable persistent undo history
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

-- Search settings
vim.opt.hlsearch = false  -- Disable persistent search highlight
vim.opt.incsearch = true  -- Enable incremental search (highlights matches as you type)

-- Enable true color support in the terminal
vim.opt.termguicolors = true

-- Set scrolling behavior
vim.opt.scrolloff = 8  -- Keep at least 8 lines above/below the cursor when scrolling
vim.opt.signcolumn = "yes" -- Always show the sign column (useful for LSP, Git signs, etc.)

-- Append '@-@' to valid filename characters (useful for certain plugins and file handling)
vim.opt.isfname:append("@-@")

-- Reduce update time (affects responsiveness, e.g., for CursorHold events)
vim.opt.updatetime = 50

-- Set text width and color column for line length visualization
vim.opt.textwidth = 120  -- Auto-wrap text at 120 characters (if enabled)
vim.opt.colorcolumn = "120" -- Show a vertical ruler at 120 characters (for code formatting)

