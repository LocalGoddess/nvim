function apply_theme(theme)
    theme = theme or "rose-pine-moon"
    vim.cmd.colorscheme(theme)
end

apply_theme()
