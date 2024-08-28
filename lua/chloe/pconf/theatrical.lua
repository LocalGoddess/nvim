function apply_theme(theme)
    theme = theme or "shado"
    vim.cmd.colorscheme(theme)
end

apply_theme()
