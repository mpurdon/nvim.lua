-- Set the Python 3 host program to the one in the virtual environment
local function get_python_host()
    -- Try poetry environment first (with timeout protection via pcall)
    local success, result = pcall(vim.fn.system, "poetry run which python 2>/dev/null")
    if success and vim.v.shell_error == 0 and result ~= "" then
        local python_path = vim.fn.trim(result)
        if python_path ~= "" and vim.fn.executable(python_path) == 1 then
            return python_path
        end
    end

    -- Fallback to system python3
    local system_python = vim.fn.trim(vim.fn.system("which python3 2>/dev/null"))
    if system_python ~= "" and vim.fn.executable(system_python) == 1 then
        return system_python
    end

    -- Final fallback to just "python3" (let system PATH handle it)
    return "python3"
end

vim.g.python3_host_prog = get_python_host()

