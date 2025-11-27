return {
  { -- Fuzzy Finder (files, lsp, etc)
    'nvim-telescope/telescope.nvim',
    event = 'VimEnter',
    tag = 'v0.1.9',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      require('telescope').setup {}

      -- See `:help telescope.builtin`
      local builtin = require 'telescope.builtin'
      vim.keymap.set('n', '<leader>pf', builtin.find_files, { desc = '[P]roject [F]ind' })
      vim.keymap.set('n', '<leader>vh', builtin.help_tags, { desc = '[V]im [H]elp' })
      vim.keymap.set('n', '<leader>pws', function()
        local word = vim.fn.expand '<cword>'
        builtin.grep_string { search = word }
      end, { desc = '[P]roject [W]ord [S]earch' })
      vim.keymap.set('n', '<leader>ps', function()
        builtin.grep_string { search = vim.fn.input 'Grep > ' }
      end, { desc = '[P]roject [S]earch' })
    end,
  },
}
-- vim: ts=2 sts=2 sw=2 et
