require('nvim-surround').setup {}

require('Comment').setup {}

require("toggleterm").setup {}
keymap.set('n', '<leader>`', ':ToggleTerm<CR>') -- toggle terminal

require('indent_blankline').setup {}

require('gitsigns').setup {}