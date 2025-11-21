return {
    'nvim-treesitter/nvim-treesitter',
    event = { "BufReadPre", "BufNewFile" },
    build = ':TSUpdate',
    config = function()
        -- import nvim-treesitter plugin
        local treesitter = require("nvim-treesitter.configs")

        treesitter.setup({
            ensure_installed = {
                'bash',
                'c',
                'cpp',
                'css',
                'gitignore',
                'go',
                'html',
                'javascript',
                'javascriptreact',
                'json',
                'lua',
                'markdown',
                'markdown_inline',
                'python',
                'php',
                'rust',
                'tsx',
                'typescript',
                'vim',
                'vimdoc',
                'yaml'
            },
            sync_install = false,
            auto_install = true,
            indent = {
                enable = true
            },
            highlight = {
                enable = true,
                additional_vim_regex_highlighting = { 'markdown' }
            },
            incremental_selection = {
                enable = true,
                keymaps = {
                    init_selection = "<C-space>",
                    node_incremental = "<C-space>",
                    scope_incremental = false,
                    node_decremental = "<bs>",
                },
            },
        })

        local parser_config = require('nvim-treesitter.parsers').get_parser_configs()
        parser_config.templ = {
            install_info = {
                url = 'https://github.com/vrischmann/tree-sitter-templ.git',
                files = { 'src/parser.c', 'src/scanner.c' },
                branch = 'master'
            }
        }

        vim.treesitter.language.register('templ', 'templ')
    end
}
