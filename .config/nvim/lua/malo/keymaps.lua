local keymap = vim.keymap

-- move in visual mode: shift+(j/k)
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- insert to normalmode
keymap.set('i', 'zx', '<ESC>')

-- clear highlights
keymap.set('n', '<leader>ch', ':nohl<CR>')

-- delete but don't yank
keymap.set('n', 'x', '"_x')
keymap.set('n', 'dd', '"_dd')

-- enables pasting (idk)
keymap.set("x", "<leader>p", [["_dP]])

-- windows
keymap.set('n', '<leader>sv', '<C-w>v') -- vertical
keymap.set('n', '<leader>sh', '<C-w>s') -- horizontal 
keymap.set('n', '<leader>se', '<C-w>=') -- equal
keymap.set('n', '<leader>sx', ':close<CR>') -- close

-- tabs
keymap.set('n', '<leader>to', ':tabnew<CR>') -- open
keymap.set('n', '<leader>tx', ':tabclose<CR>') -- close
keymap.set('n', '<leader>tn', ':tabn<CR>') -- next
keymap.set('n', '<leader>tp', ':tabp<CR>') -- prev

-- buffers
keymap.set("n", "<C-w>", ":bdelete<CR>") 