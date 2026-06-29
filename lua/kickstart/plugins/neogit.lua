vim.pack.add { 'https://github.com/neogitorg/neogit' }
vim.pack.add { 'https://github.com/sindrets/diffview.nvim' }

local neogit = require 'neogit'
neogit.setup {}

vim.keymap.set('n', '<leader>gs', neogit.open)
