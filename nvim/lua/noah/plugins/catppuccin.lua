return {
    "catppuccin/nvim",
    priority = 1000,
    name = "catppuccin",
	config = function()
		require("catppuccin").setup {
			integrations = {
				cmp = true,
				treesitter = true,
				nvimtree = true,
				telescope = true,
				markdown = true,
				native_lsp = {
					enabled = true,
					virtual_text = {
						errors = { "italic" },
						hints = { "italic" },
						warnings = { "italic" },
						information = { "italic" },
					},
					underlines = {
						errors = { "underline" },
						hints = { "underline" },
						warnings = { "underline" },
						information = { "underline" },
					},
				}
			},
			flavour = "mocha", -- latte, frappe, macchiato, mocha
			transparent_background = false,
		}
		vim.cmd('colorscheme catppuccin')
	end
}
