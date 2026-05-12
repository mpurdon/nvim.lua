-- Compatibility shims for older Neovim builds.
--
-- nvim-lspconfig's bundled server configs (denols, ts_ls, …) pass *nested* marker
-- tables to vim.fs.root / vim.fs.find to express prioritized project-root detection,
-- e.g. `{ { "deno.json", "deno.jsonc" }, { ".git" } }`. That feature only exists in
-- newer Neovim builds. Some 0.12-dev snapshots report a version >= 0.11.3 (so
-- `has('nvim-0.11.3')` is true) but don't actually implement it, so vim.fs.joinpath
-- blows up on the inner table ("invalid value (table) at index 2 ... for 'concat'")
-- whenever such a server is enabled — which manifests as an error when opening JS/TS
-- files, including through netrw.
--
-- Detect that situation once at startup and, only if needed, flatten nested markers
-- before delegating to the real implementation. On a Neovim build that supports nested
-- markers natively, this file does nothing.
do
    local ok = pcall(vim.fs.find, { { "_compat_probe_nonexistent_" } }, {
        upward = true,
        path = vim.fn.getcwd(),
    })
    if not ok then
        local orig_find = vim.fs.find
        vim.fs.find = function(names, opts)
            if type(names) == "table" then
                local flat = {}
                for _, n in ipairs(names) do
                    if type(n) == "table" then
                        for _, m in ipairs(n) do
                            flat[#flat + 1] = m
                        end
                    else
                        flat[#flat + 1] = n
                    end
                end
                names = flat
            end
            return orig_find(names, opts)
        end
    end
end
