require('lualine').setup {
    options = { theme = 'tokyonight' },
    --[[
    tabline = {
        lualine_a = {'buffers'},
        lualine_b = {},
        lualine_c = {},
        lualine_x = {},
        lualine_y = {},
        lualine_z = {'tabs'}
    },
    --]]
}

-- empty setup using defaults
require('nvim-tree').setup {}

-- local treeapi = require('nvim-tree.api')
-- vim.keymap.set('n', '<leader>b', treeapi.tree.toggle, {false, true})

require('bufferline').setup {
    options = {
        diagnostics = "nvim_lsp",
        offsets = {
            {
                filetype = "NvimTree",
                text = "File Explorer",
                text_align = "left",
            }
        }
    }
}

require('trouble').setup {}
