return {
  "lervag/vimtex",
  lazy = false,     -- we don't want to lazy load VimTeX
  init = function()
    -- VimTeX configuration goes here, e.g.
    --vim.g.tex_flavor = "latex"
    vim.g.vimtex_view_method = "zathura"
    --vim.g.vimtex_compiler_method = "latexmk"
    vim.g.vimtex_quickfix_mode = 1
    --vim.g.tex_conceal = "abdmg"
  end
}
