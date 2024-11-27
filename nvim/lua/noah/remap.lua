vim.g.mapleader = " "
vim.keymap.set('n', '<leader>bx', '<CMD>bd<CR>')

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")


vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("x", "<leader>p", "\"_dp")


vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")


vim.keymap.set("n", "<C-f>", function ()
    local p = vim.api.nvim_buf_get_name(0)
    local path, count = p:gsub("%.tex", "")
    if count == 1 then
        vim.cmd('silent !tmux new-window -t 0 -d "zathura '..path..'.pdf"')
    end
end)

vim.keymap.set("n", "<C-a>", "<cmd>silent !tmux new-window <CR>")


vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

vim.keymap.set("i", "<C-c>", "<Esc>")


vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)
