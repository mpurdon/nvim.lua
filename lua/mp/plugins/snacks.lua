return {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    opts = {
        -- Enable the modules you want to use
        bigfile = { enabled = true },
        dashboard = { enabled = false }, -- You already have alpha
        indent = { enabled = true },
        input = { enabled = true },
        notifier = { enabled = true },
        quickfile = { enabled = true },
        scroll = { enabled = true },
        statuscolumn = { enabled = true },
        words = { enabled = true },
        styles = {
            notification = {
                wo = { wrap = true }
            }
        }
    },
    keys = {
        { "<leader>un", function() require("snacks").notifier.hide() end, desc = "Dismiss All Notifications" },
        { "<leader>bd", function() require("snacks").bufdelete() end, desc = "Delete Buffer" },
        { "<leader>gg", function() require("snacks").lazygit() end, desc = "Lazygit" },
        { "<leader>gb", function() require("snacks").git.blame_line() end, desc = "Git Blame Line" },
        { "<leader>gB", function() require("snacks").gitbrowse() end, desc = "Git Browse" },
        { "<leader>gf", function() require("snacks").lazygit.log_file() end, desc = "Lazygit Current File History" },
        { "<leader>gl", function() require("snacks").lazygit.log() end, desc = "Lazygit Log (cwd)" },
        { "<leader>cR", function() require("snacks").rename.rename_file() end, desc = "Rename File" },
        { "<c-/>",      function() require("snacks").terminal() end, desc = "Toggle Terminal" },
        { "<c-_>",      function() require("snacks").terminal() end, desc = "which_key_ignore" },
        { "]]",         function() require("snacks").words.jump(vim.v.count1) end, desc = "Next Reference", mode = { "n", "t" } },
        { "[[",         function() require("snacks").words.jump(-vim.v.count1) end, desc = "Prev Reference", mode = { "n", "t" } },
    },
    init = function()
        vim.api.nvim_create_autocmd("User", {
            pattern = "VeryLazy",
            callback = function()
                -- Setup some globals for debugging (lazy-loaded)
                _G.dd = function(...)
                    require("snacks").debug.inspect(...)
                end
                _G.bt = function()
                    require("snacks").debug.backtrace()
                end
                vim.print = _G.dd -- Override print to use snacks for `:=` command

                -- Create some toggle mappings
                require("snacks").toggle.option("spell", { name = "Spelling" }):map("<leader>us")
                require("snacks").toggle.option("wrap", { name = "Wrap" }):map("<leader>uw")
                require("snacks").toggle.option("relativenumber", { name = "Relative Number" }):map("<leader>uL")
                require("snacks").toggle.diagnostics():map("<leader>ud")
                require("snacks").toggle.line_number():map("<leader>ul")
                require("snacks").toggle.option("conceallevel", { off = 0, on = vim.o.conceallevel > 0 and vim.o.conceallevel or 2 }):map("<leader>uc")
                require("snacks").toggle.treesitter():map("<leader>uT")
                require("snacks").toggle.option("background", { off = "light", on = "dark", name = "Dark Background" }):map("<leader>ub")
                require("snacks").toggle.inlay_hints():map("<leader>uh")
            end,
        })
    end,
}
