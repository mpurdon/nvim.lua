return {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.8",
    dependencies = {
        "nvim-lua/plenary.nvim",
        { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
        "nvim-tree/nvim-web-devicons",
    },
    config = function()
        local telescope = require("telescope")
        local actions = require("telescope.actions")
        local builtin = require("telescope.builtin")

        telescope.setup({
            defaults = {
                path_display = { "smart" },
                mappings = {
                    i = {
                        ["<C-k>"] = actions.move_selection_previous, -- move to prev result
                        ["<C-j>"] = actions.move_selection_next,     -- move to next result
                        ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
                    },
                }
            },
        })

        telescope.load_extension("fzf")

        vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = "Telescope: Find files" })
        vim.keymap.set('n', '<leader>fg', builtin.git_files, { desc = "Telescope: Find files with git" })
        vim.keymap.set('n', '<leader>fs', builtin.live_grep, { desc = "Telescope: Live grep" })
        vim.keymap.set('n', '<leader>fS', function()
            builtin.grep_string({
                search = vim.fn.input("Grep for: ")
            })
        end, { desc = "Telescope: Find string in CWD" })
        vim.keymap.set('n', '<leader>fc', function()
            builtin.grep_string({
                search = vim.fn.expand("<cword>")
            })
        end, { desc = "Telescope: Grep current word in CWD" })
        vim.keymap.set('n', '<leader>fC', function()
            builtin.grep_string({
                search = vim.fn.expand("<cWORD>")
            })
        end, { desc = "Telescope: Grep current word matching case in CWD" })
        vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
    end
}
