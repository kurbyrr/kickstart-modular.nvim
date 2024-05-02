return {
    'akinsho/toggleterm.nvim',
    version = "*",
    config = function()
        local toggleterm = require 'toggleterm'
        toggleterm.setup {
            shade_terminals = true,
            direction = "horizontal",
        }

        vim.keymap.set('n', "<leader>tr", vim.cmd.ToggleTerm, { desc = "[T]oggle [T]erminal" })
    end
}
