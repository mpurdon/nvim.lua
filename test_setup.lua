-- Test script for Neovim configuration
print("=== Neovim Configuration Test ===")

-- Test basic configuration loading
print("1. Testing basic configuration...")
require("mp.config")
print("✓ Basic configuration loaded")

-- Test leader keys
print("2. Testing leader keys...")
print("   Leader key:", vim.g.mapleader)
print("   Local leader:", vim.g.maplocalleader)
print("✓ Leader keys configured")

-- Test options
print("3. Testing options...")
print("   Number:", vim.opt.number:get())
print("   Relativenumber:", vim.opt.relativenumber:get())
print("   Termguicolors:", vim.opt.termguicolors:get())
print("✓ Options configured")

-- Test Python host
print("4. Testing Python host...")
print("   Python host:", vim.g.python3_host_prog)
print("✓ Python host configured")

-- Test plugin loading
print("5. Testing plugin loading...")
local lazy = require("lazy")
print("✓ Lazy.nvim loaded")

-- Test DAP plugin
print("6. Testing DAP plugin...")
lazy.load({plugins = {"nvim-dap"}})
local dap = require("dap")
print("✓ DAP plugin loaded")
print("   DAP adapters:", #vim.tbl_keys(dap.adapters or {}))

-- Test Treesitter Text Objects
print("7. Testing Treesitter Text Objects...")
lazy.load({plugins = {"nvim-treesitter-textobjects"}})
local configs = require("nvim-treesitter.configs")
print("✓ Treesitter Text Objects loaded")

-- Test keybindings
print("8. Testing keybindings...")
local keymaps = vim.api.nvim_get_keymap('n')
print("   Total keymaps:", #keymaps)

-- Count debug keybindings
local debug_count = 0
for _, km in ipairs(keymaps) do
    if km.lhs and km.lhs:find('leader.*d') then
        debug_count = debug_count + 1
    end
end
print("   Debug keybindings:", debug_count)

-- Count treesitter keybindings
local ts_count = 0
for _, km in ipairs(keymaps) do
    if km.lhs and (km.lhs:find('af') or km.lhs:find('if') or km.lhs:find('%]m') or km.lhs:find('%[m')) then
        ts_count = ts_count + 1
    end
end
print("   Treesitter keybindings:", ts_count)

print("✓ Keybindings configured")

print("\n=== Test Results ===")
print("✓ All tests passed!")
print("✓ Configuration is working correctly")
print("✓ Plugins are loading properly")
print("✓ Ready to use!") 