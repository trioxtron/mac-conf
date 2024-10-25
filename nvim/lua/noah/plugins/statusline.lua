return {
    "feline-nvim/feline.nvim",
	
    dependencies = {
		"nvim-tree/nvim-web-devicons"
	},

    config = function()
        local line_ok, feline = pcall(require, "feline")
        if not line_ok then
            return
        end

        local catppuccin = {
            fg = "#cad3f5",
            bg = "#24273a",
            green = "#a6da95",
            yellow = "#eed49f",
            mauve = "#c6a0f6",
            peach = "#f5a97f",
            flamingo = "#f0c6c6",
            red = "#ed8796",
            teal = "#8bd5ca",
            surface = "#5b6078",
            dark_red = "#f75f5f",
        }

        local vi_mode_colors = {
            NORMAL = "green",
            OP = "green",
            INSERT = "yellow",
            VISUAL = "mauve",
            LINES = "peach",
            BLOCK = "dark_red",
            REPLACE = "red",
            COMMAND = "teal",
        }

        local c = {
            vim_mode = {
                provider = {
                    name = "vi_mode",
                    opts = {
                        show_mode_name = true,
                        -- padding = "center", -- Uncomment for extra padding.
                    },
                },
                hl = function()
                    return {
                        fg = require("feline.providers.vi_mode").get_mode_color(),
                        bg = "surface",
                        style = "bold",
                        name = "NeovimModeHLColor",
                    }
                end,
                left_sep = "block",
                right_sep = "block",
            },
            gitBranch = {
                provider = "git_branch",
                hl = {
                    fg = "flamingo",
                    bg = "surface",
                    style = "bold",
                },
                left_sep = "block",
                right_sep = "block",
            },
            gitDiffAdded = {
                provider = "git_diff_added",
                hl = {
                    fg = "green",
                    bg = "surface",
                },
                left_sep = "block",
                right_sep = "block",
            },
            gitDiffRemoved = {
                provider = "git_diff_removed",
                hl = {
                    fg = "red",
                    bg = "surface",
                },
                left_sep = "block",
                right_sep = "block",
            },
            gitDiffChanged = {
                provider = "git_diff_changed",
                hl = {
                    fg = "fg",
                    bg = "surface",
                },
                left_sep = "block",
                right_sep = "right_filled",
            },
            separator = {
                provider = "",
            },
            fileinfo = {
                provider = {
                    name = "file_info",
                    opts = {
                        type = "relative-short",
                    },
                },
                hl = {
                    style = "bold",
                },
                left_sep = " ",
                right_sep = " ",
            },
            diagnostic_errors = {
                provider = "diagnostic_errors",
                hl = {
                    fg = "red",
                },
            },
            diagnostic_warnings = {
                provider = "diagnostic_warnings",
                hl = {
                    fg = "yellow",
                },
            },
            diagnostic_hints = {
                provider = "diagnostic_hints",
                hl = {
                    fg = "teal",
                },
            },
            diagnostic_info = {
                provider = "diagnostic_info",
            },
            lsp_client_names = {
                provider = "lsp_client_names",
                hl = {
                    fg = "mauve",
                    bg = "surface",
                    style = "bold",
                },
                left_sep = "left_filled",
                right_sep = "block",
            },
            file_type = {
                provider = {
                    name = "file_type",
                    opts = {
                        filetype_icon = true,
                        case = "titlecase",
                    },
                },
                hl = {
                    fg = "red",
                    bg = "surface",
                    style = "bold",
                },
                left_sep = "block",
                right_sep = "block",
            },
            file_encoding = {
                provider = "file_encoding",
                hl = {
                    fg = "orange",
                    bg = "surface",
                    style = "italic",
                },
                left_sep = "block",
                right_sep = "block",
            },
            position = {
                provider = "position",
                hl = {
                    fg = "green",
                    bg = "surface",
                    style = "bold",
                },
                left_sep = "block",
                right_sep = "block",
            },
            line_percentage = {
                provider = "line_percentage",
                hl = {
                    fg = "teal",
                    bg = "surface",
                    style = "bold",
                },
                left_sep = "block",
                right_sep = "block",
            },
            scroll_bar = {
                provider = "scroll_bar",
                hl = {
                    fg = "yellow",
                    style = "bold",
                },
            },
        }

        local left = {
            c.vim_mode,
            c.gitBranch,
            c.gitDiffAdded,
            c.gitDiffRemoved,
            c.gitDiffChanged,
            c.separator,
        }

        local middle = {
            c.fileinfo,
            c.diagnostic_errors,
            c.diagnostic_warnings,
            c.diagnostic_info,
            c.diagnostic_hints,
        }

        local right = {
            c.lsp_client_names,
            c.file_type,
            c.file_encoding,
            c.position,
            c.line_percentage,
            c.scroll_bar,
        }

        local components = {
            active = {
                left,
                middle,
                right,
            },
            inactive = {
                left,
                middle,
                right,
            },
        }

        feline.setup({
            components = components,
            theme = catppuccin,
            vi_mode_colors = vi_mode_colors,
        })
    end
}

