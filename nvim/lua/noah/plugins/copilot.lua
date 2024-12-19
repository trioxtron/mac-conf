return {
    "github/copilot.vim",
    config = function ()
        vim.keymap.set("n", "<leader>cp", function ()
            vim.cmd("Copilot panel")
        end)
    end
}
