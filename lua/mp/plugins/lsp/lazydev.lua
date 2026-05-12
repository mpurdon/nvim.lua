-- Replaces the archived folke/neodev.nvim: configures lua_ls for Neovim Lua
-- development (runtime/plugin types, `vim.uv`, etc.) only when editing Lua.
return {
    "folke/lazydev.nvim",
    ft = "lua",
    opts = {
        library = {
            -- load luvit types when the `vim.uv` word is found
            { path = "${3rd}/luv/library", words = { "vim%.uv" } },
        },
    },
}
