function ColorMyPencils()
    -- Explicitly set the Kanagawa Dragon variant
    vim.cmd.colorscheme("kanagawa-dragon")

    -- Remove background for a more transparent look
    vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' })
    vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'none' })
end

return {
    'rebelot/kanagawa.nvim',
    priority = 1000,
    opts = {
        compile = true,
        undercurl = true,
        commentStyle = { italic = true },
        functionStyle = {},
        keywordStyle = { italic = true },
        statementStyle = { bold = true },
        typeStyle = {},
        transparent = false, -- Keep background color (but overridden in ColorMyPencils)
        dimInactive = false, -- Do not dim inactive windows
        terminalColors = true,
        colors = {
            theme = {
                all = {
                    ui = {
                        bg_gutter = 'none', -- Remove background color from gutters
                    },
                },
            },
        },
        background = {
            dark = 'dragon', -- Set dark mode to Dragon variant
            light = 'lotus'  -- Keep light mode as Lotus
        },
    },
    config = function(_, opts)
        require("kanagawa").setup(opts)
        ColorMyPencils() -- Apply the custom color tweaks
    end
}
