return {
    "CopilotC-Nvim/CopilotChat.nvim",
    opts = {},
   dependencies = {
            "github/copilot.vim",
            { "nvim-lua/plenary.nvim", branch = "master" }
    },
    build = "make tiktoken"
}
