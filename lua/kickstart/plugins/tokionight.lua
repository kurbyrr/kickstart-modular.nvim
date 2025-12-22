return {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {
        on_colors = function(colors)
            if colors.bg == "#1a1b26" then
                colors.bg = "#000000"
            end
        end
    },
}
