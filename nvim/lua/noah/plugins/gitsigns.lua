return {
    "lewis6991/gitsigns.nvim",

    config = function()
        require('gitsigns').setup {
            signs = {
                add = { text = '+' },
                change = { text = '~' },
                delete = { text = '_' },
                topdelete = { text = '‾' },
                changedelete = { text = '~' },
            },
            current_line_blame = true,
            current_line_blame_opts = {
                delay = 0
            },
            numhl = true
        }
    end
}
