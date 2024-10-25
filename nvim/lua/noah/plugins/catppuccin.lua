return {
    "catppuccin/nvim",

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
			flavour = "macchiato",
			transparent_background = true,
		}
		vim.cmd('colorscheme catppuccin')
	end
}
