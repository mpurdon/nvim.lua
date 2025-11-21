return {
    "mfussenegger/nvim-dap",
    event = "VeryLazy",
    dependencies = {
        "rcarriga/nvim-dap-ui",
        "leoluz/nvim-dap-go",
        "nvim-neotest/nvim-nio",
    },
    config = function()
        local dap = require("dap")
        local dapui = require("dapui")

        -- Setup dap-ui
        dapui.setup({
            layouts = {
                {
                    elements = {
                        { id = "scopes", size = 0.33 },
                        { id = "breakpoints", size = 0.17 },
                        { id = "stacks", size = 0.25 },
                        { id = "watches", size = 0.25 },
                    },
                    size = 0.33,
                    position = "right",
                },
                {
                    elements = {
                        { id = "repl", size = 0.45 },
                        { id = "console", size = 0.55 },
                    },
                    size = 0.27,
                    position = "bottom",
                },
            },
        })

        -- Automatically open dap-ui when debugging starts
        dap.listeners.after.event_initialized["dapui_config"] = function()
            dapui.open()
        end

        -- Automatically close dap-ui when debugging ends
        dap.listeners.before.event_terminated["dapui_config"] = function()
            dapui.close()
        end

        dap.listeners.before.event_exited["dapui_config"] = function()
            dapui.close()
        end

        -- Setup Go debugging
        require("dap-go").setup()

        -- Keymaps for debugging
        local keymap = vim.keymap
        keymap.set("n", "<leader>db", dap.toggle_breakpoint, { desc = "Toggle breakpoint" })
        keymap.set("n", "<leader>dc", dap.continue, { desc = "Continue debugging" })
        keymap.set("n", "<leader>di", dap.step_into, { desc = "Step into" })
        keymap.set("n", "<leader>do", dap.step_over, { desc = "Step over" })
        keymap.set("n", "<leader>dO", dap.step_out, { desc = "Step out" })
        keymap.set("n", "<leader>dr", dap.repl.toggle, { desc = "Toggle REPL" })
        keymap.set("n", "<leader>dl", dap.run_last, { desc = "Run last debug configuration" })
        keymap.set("n", "<leader>du", dapui.toggle, { desc = "Toggle debug UI" })
        keymap.set("n", "<leader>dt", dap.terminate, { desc = "Terminate debugging" })

        -- Configure debug adapters for different languages
        -- Python
        dap.adapters.python = {
            type = "executable",
            command = "python3",
            args = { "-m", "debugpy.adapter" },
        }

        dap.configurations.python = {
            {
                type = "python",
                request = "launch",
                name = "Launch file",
                program = "${file}",
                pythonPath = function()
                    return vim.g.python3_host_prog
                end,
            },
            {
                type = "python",
                request = "attach",
                name = "Attach to process",
                processId = function()
                    return vim.fn.input("Process ID: ")
                end,
            },
        }

        -- JavaScript/TypeScript
        dap.adapters.node2 = {
            type = "executable",
            command = "node",
            args = { os.getenv("HOME") .. "/.local/share/nvim/mason/packages/node-debug2-adapter/out/src/nodeDebug.js" },
        }

        dap.configurations.javascript = {
            {
                name = "Launch",
                type = "node2",
                request = "launch",
                program = "${file}",
                cwd = vim.fn.getcwd(),
                sourceMaps = true,
                protocol = "inspector",
                console = "integratedTerminal",
            },
        }

        dap.configurations.typescript = dap.configurations.javascript
        dap.configurations.javascriptreact = dap.configurations.javascript
        dap.configurations.typescriptreact = dap.configurations.javascript
    end,
} 