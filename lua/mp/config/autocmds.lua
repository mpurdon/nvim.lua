-- Create shorthand for defining auto groups and auto commands
local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd

-- Create an auto group for highlighting yanked text
local yank_group = augroup('HighlightYank', {})

-- Function to reload a Lua module using plenary.nvim (useful for development)
function R(name)
    require('plenary.reload').reload_module(name)
end

-- Add custom filetype detection
vim.filetype.add({
    extension = {
        templ = 'templ', -- Treat files with the `.templ` extension as 'templ' filetype
    }
})

-- Automatically highlight yanked text
autocmd('TextYankPost', {
    group = yank_group, -- Assign this auto command to the 'HighlightYank' group
    pattern = '*',      -- Apply to all files
    callback = function()
        vim.highlight.on_yank({
            higroup = 'IncSearch', -- Use 'IncSearch' highlight group
            timeout = 200           -- Highlight for 200ms
        })
    end
})

-- Automatically trim trailing whitespace before saving a file
autocmd({ 'BufWritePre' }, {
    group = augroup('TrimWhitespace', {}), -- Create and assign to 'TrimWhitespace' group
    pattern = '*', -- Apply to all files
    command = [[%s/\s\+$//e]] -- Strip trailing whitespace
})

-- Configure NetRW (built-in file explorer)
vim.g.netrw_browse_split = 0 -- Open files in the same window instead of splitting
vim.g.netrw_banner = 0       -- Disable the NetRW banner
vim.g.netrw_winsize = 25      -- Set NetRW window size to 25% of the screen

print("done loading autocmds.lua")

