function ColorMyPencils()
    -- Explicitly set the Kanagawa Dragon variant
    vim.cmd.colorscheme("carbonfox")

    -- Remove background for a more transparent look
    vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' })
    vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'none' })
end

return {
    "EdenEast/nightfox.nvim",
    priority = 1000,
    lazy = false,
    opts = {
        compile = true,
        undercurl = true,
        transparent = false, -- Keep background color (but overridden in ColorMyPencils)
        dim_inactive = false, -- Do not dim inactive windows
        terminal_colors = true,
        styles = {
          comments = "italic",
          functions = "italic,bold",
          keywords = "bold",
          variables = "NONE",
          statement = "bold",
        },
    },
    config = function(_, opts)
        require("nightfox").setup(opts)
        ColorMyPencils() -- Apply the custom color tweaks
    end
}
