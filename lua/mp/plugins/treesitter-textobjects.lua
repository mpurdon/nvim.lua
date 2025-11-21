return {
    "nvim-treesitter/nvim-treesitter-textobjects",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = { "nvim-treesitter/nvim-treesitter" },
    config = function()
        require("nvim-treesitter.configs").setup({
            textobjects = {
                select = {
                    enable = true,
                    lookahead = true,
                    keymaps = {
                        -- You can use the capture groups defined in textobjects.scm
                        ["af"] = { query = "@function.outer", desc = "Select outer part of a function region" },
                        ["if"] = { query = "@function.inner", desc = "Select inner part of a function region" },
                        ["ac"] = { query = "@class.outer", desc = "Select outer part of a class region" },
                        ["ic"] = { query = "@class.inner", desc = "Select inner part of a class region" },
                        ["aa"] = { query = "@parameter.outer", desc = "Select outer part of a parameter region" },
                        ["ia"] = { query = "@parameter.inner", desc = "Select inner part of a parameter region" },
                        ["al"] = { query = "@loop.outer", desc = "Select outer part of a loop region" },
                        ["il"] = { query = "@loop.inner", desc = "Select inner part of a loop region" },
                        ["ai"] = { query = "@conditional.outer", desc = "Select outer part of a conditional region" },
                        ["ii"] = { query = "@conditional.inner", desc = "Select inner part of a conditional region" },
                        ["ab"] = { query = "@block.outer", desc = "Select outer part of a block region" },
                        ["ib"] = { query = "@block.inner", desc = "Select inner part of a block region" },
                        ["as"] = { query = "@statement.outer", desc = "Select outer part of a statement region" },
                        ["is"] = { query = "@statement.inner", desc = "Select inner part of a statement region" },
                        ["aC"] = { query = "@comment.outer", desc = "Select outer part of a comment region" },
                        ["iC"] = { query = "@comment.inner", desc = "Select inner part of a comment region" },
                    },
                },
                move = {
                    enable = true,
                    set_jumps = true, -- whether to set jumps in the jumplist
                    goto_next_start = {
                        ["]m"] = { query = "@function.outer", desc = "Next function start" },
                        ["]c"] = { query = "@class.outer", desc = "Next class start" },
                        ["]a"] = { query = "@parameter.outer", desc = "Next parameter start" },
                        ["]l"] = { query = "@loop.outer", desc = "Next loop start" },
                        ["]i"] = { query = "@conditional.outer", desc = "Next conditional start" },
                        ["]b"] = { query = "@block.outer", desc = "Next block start" },
                        ["]s"] = { query = "@statement.outer", desc = "Next statement start" },
                        ["]C"] = { query = "@comment.outer", desc = "Next comment start" },
                    },
                    goto_next_end = {
                        ["]M"] = { query = "@function.outer", desc = "Next function end" },
                        ["]C"] = { query = "@class.outer", desc = "Next class end" },
                        ["]A"] = { query = "@parameter.outer", desc = "Next parameter end" },
                        ["]L"] = { query = "@loop.outer", desc = "Next loop end" },
                        ["]I"] = { query = "@conditional.outer", desc = "Next conditional end" },
                        ["]B"] = { query = "@block.outer", desc = "Next block end" },
                        ["]S"] = { query = "@statement.outer", desc = "Next statement end" },
                    },
                    goto_previous_start = {
                        ["[m"] = { query = "@function.outer", desc = "Previous function start" },
                        ["[c"] = { query = "@class.outer", desc = "Previous class start" },
                        ["[a"] = { query = "@parameter.outer", desc = "Previous parameter start" },
                        ["[l"] = { query = "@loop.outer", desc = "Previous loop start" },
                        ["[i"] = { query = "@conditional.outer", desc = "Previous conditional start" },
                        ["[b"] = { query = "@block.outer", desc = "Previous block start" },
                        ["[s"] = { query = "@statement.outer", desc = "Previous statement start" },
                        ["[C"] = { query = "@comment.outer", desc = "Previous comment start" },
                    },
                    goto_previous_end = {
                        ["[M"] = { query = "@function.outer", desc = "Previous function end" },
                        ["[C"] = { query = "@class.outer", desc = "Previous class end" },
                        ["[A"] = { query = "@parameter.outer", desc = "Previous parameter end" },
                        ["[L"] = { query = "@loop.outer", desc = "Previous loop end" },
                        ["[I"] = { query = "@conditional.outer", desc = "Previous conditional end" },
                        ["[B"] = { query = "@block.outer", desc = "Previous block end" },
                        ["[S"] = { query = "@statement.outer", desc = "Previous statement end" },
                    },
                },
                swap = {
                    enable = true,
                    swap_next = {
                        ["<leader>a"] = { query = "@parameter.inner", desc = "Swap with next parameter" },
                        ["<leader>f"] = { query = "@function.outer", desc = "Swap with next function" },
                        ["<leader>c"] = { query = "@class.outer", desc = "Swap with next class" },
                    },
                    swap_previous = {
                        ["<leader>A"] = { query = "@parameter.inner", desc = "Swap with previous parameter" },
                        ["<leader>F"] = { query = "@function.outer", desc = "Swap with previous function" },
                        ["<leader>C"] = { query = "@class.outer", desc = "Swap with previous class" },
                    },
                },
                lsp_interop = {
                    enable = true,
                    border = "none",
                    floating_preview_opts = {},
                    peek_definition_code = {
                        ["<leader>df"] = { query = "@function.outer", desc = "Peek function definition" },
                        ["<leader>dF"] = { query = "@class.outer", desc = "Peek class definition" },
                    },
                },
            },
        })
    end,
} 