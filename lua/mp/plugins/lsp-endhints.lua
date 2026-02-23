return {
    "chrisgrieser/nvim-lsp-endhints",
    event = "LspAttach",
    opts = {
        icons = {
            type = "=> ",
            parameter = "~> ",
            offspec = " ", -- hint kind not defined in official LSP spec
        },
        label = {
            padding = 1,
            marginLeft = 0,
            bracketedParameters = true,
        },
        autoEnableHints = true,
    },
    config = function(_, opts)
        require("lsp-endhints").setup(opts)
    end
}
