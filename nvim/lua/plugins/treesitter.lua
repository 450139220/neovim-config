require'nvim-treesitter.configs'.setup {
  ensure_installed = { 'lua', 'vim', 'vimdoc', 'json', 'html', 'css', 'javascript', 'typescript', 'vue', 'python' },
  highlight = { enable = true },
  indent = { enable = true },
  -- rainbow = {
  --   enable = true,
  -- },
}

-- This module contains a number of default definitions
local rainbow_delimiters = require 'rainbow-delimiters'

vim.g.rainbow_delimiters = {
    strategy = {
        [''] = rainbow_delimiters.strategy['global'],
        vim = rainbow_delimiters.strategy['local'],
    },
    query = {
        [''] = 'rainbow-delimiters',
        lua = 'rainbow-blocks',
    },
    priority = {
        [''] = 110,
        lua = 210,
    },
    highlight = {
        'RainbowDelimiterRed',
        'RainbowDelimiterYellow',
        'RainbowDelimiterBlue',
        'RainbowDelimiterOrange',
        'RainbowDelimiterGreen',
        'RainbowDelimiterViolet',
        'RainbowDelimiterCyan',
    },
}

require('nvim-ts-autotag').setup({
  autotag = {
    enable = true,
    filetype = {'html', 'vue', 'javascript', 'typescript'},
  },
})
