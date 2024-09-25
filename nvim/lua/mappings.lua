local map = vim.keymap.set

map('i', '<C-b>', '<ESC>^i', { desc = 'move beginning of line' })
map('i', '<C-e>', '<End>', { desc = 'move end of line' })
map('i', '<C-h>', '<Left>', { desc = 'move left' })
map('i', '<C-l>', '<Right>', { desc = 'move right' })
map('i', '<C-j>', '<Down>', { desc = 'move down' })
map('i', '<C-k>', '<Up>', { desc = 'move up' })

map('n', '<C-h>', '<C-w>h', { desc = 'switch window left' })
map('n', '<C-l>', '<C-w>l', { desc = 'switch window right' })
map('n', '<C-j>', '<C-w>j', { desc = 'switch window down' })
map('n', '<C-k>', '<C-w>k', { desc = 'switch window up' })

map('n', '<Esc>', '<cmd>noh<CR>', { desc = 'General Clear highlights' })

map('n', '<C-s>', '<cmd>w<CR>', { desc = 'General Save file' })
map('n', '<C-c>', '<cmd>%y+<CR>', { desc = 'General Copy whole file' })

map('t', '<Esc>', '<C-\\><C-n>', { desc = 'Escape from terminal mode' })

-- [[ nvimtree ]]
map('n', '<leader>e', '<cmd>NvimTreeToggle<CR>', { desc = 'nvimtree toggle window' })
-- map("n", "<leader>e", "<cmd>NvimTreeFocus<CR>", { desc = "nvimtree focus window" })

-- [[ comments ]]
map('n', '<C-_>', 'gcc', { desc = 'Toggle Comment', remap = true })
map('v', '<C-_>', 'gc', { desc = 'Toggle Comment', remap = true })

-- [[ telescope ]]
map('n', '<leader>fw', '<cmd>Telescope live_grep<CR>', { desc = 'telescope live grep' })
map('n', '<leader>fb', '<cmd>Telescope buffers<CR>', { desc = 'telescope find buffers' })
map('n', '<leader>fh', '<cmd>Telescope help_tags<CR>', { desc = 'telescope help page' })
map('n', '<leader>ma', '<cmd>Telescope marks<CR>', { desc = 'telescope find marks' })
map('n', '<leader>fo', '<cmd>Telescope oldfiles<CR>', { desc = 'telescope find oldfiles' })
map('n', '<leader>fz', '<cmd>Telescope current_buffer_fuzzy_find<CR>', { desc = 'telescope find in current buffer' })
map('n', '<leader>cm', '<cmd>Telescope git_commits<CR>', { desc = 'telescope git commits' })
map('n', '<leader>gt', '<cmd>Telescope git_status<CR>', { desc = 'telescope git status' })
map('n', '<leader>ff', '<cmd>Telescope find_files<cr>', { desc = 'telescope find files' })
map(
  'n',
  '<leader>fa',
  '<cmd>Telescope find_files follow=true no_ignore=true hidden=true<CR>',
  { desc = 'telescope find all files' }
)
