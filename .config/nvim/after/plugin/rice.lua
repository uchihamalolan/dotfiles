local keymap = vim.keymap

require("nvim-tree").setup {
	renderer = {
		icons = {
			glyphs = {
				folder = {
					arrow_closed = "▶︎",
					arrow_open = "▼"
				}
			}
		}
	}
}
-- g? in nvim tree buffer to view all mappings
keymap.set('n', '<leader>tt', ':NvimTreeToggle<CR>') -- toggle nvim-tree
keymap.set('n', '<leader>te', ':NvimTreeFindFile<CR>') -- find buffer in tree
keymap.set('n', '<leader>tc', ':NvimTreeCollapse<CR>') -- collapse tree
keymap.set('n', '<leader>tf', ':NvimTreeFocus<CR>') -- focus on tree


require('lualine').setup {
	options = {
		theme = 'tokyonight'
	},
	extensions = {
		'nvim-tree',
		'toggleterm'
	},
	-- tabline = {
 --  	lualine_a = {'buffers'},
 --  	lualine_b = {},
 --  	lualine_c = {},
 --  	lualine_x = {},
 --  	lualine_y = {},
 --  	lualine_z = {'tabs'}
	-- }
}


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
