-----------------------------------------------------------
-- Keymaps configuration file: keymaps of neovim
-- and plugins.
-----------------------------------------------------------

local map = vim.api.nvim_set_keymap
local default_opts = { noremap = true, silent = true }
local cmd = vim.cmd

-----------------------------------------------------------
-- Neovim shortcuts:
-----------------------------------------------------------

-- clear search highlighting
map("n", "<leader>c", ":nohl<CR>", default_opts)

-- map Esc to kk
map("i", "kk", "<Esc>", { noremap = true })

-- fast saving with <leader> and s
map("n", "<leader>s", ":w<CR>", default_opts)
map("i", "<leader>s", "<C-c>:w<CR>", default_opts)

-- move around splits using Ctrl + {h,j,k,l}
map("n", "<C-h>", "<C-w>h", default_opts)
map("n", "<C-j>", "<C-w>j", default_opts)
map("n", "<C-k>", "<C-w>k", default_opts)
map("n", "<C-l>", "<C-w>l", default_opts)

-- close all windows and exit from neovim
map("n", "<leader>q", ":qa!<CR>", default_opts)

-----------------------------------------------------------
-- Applications & Plugins shortcuts:
-----------------------------------------------------------
-- open terminal
map("n", "<C-t>", ":Term<CR>", { noremap = true })

-- nvim-tree
map("n", "<C-n>", ":NvimTreeToggle<CR>", default_opts) -- open/close
map("n", "<leader>r", ":NvimTreeRefresh<CR>", default_opts) -- refresh
map("n", "<leader>n", ":NvimTreeFindFile<CR>", default_opts) -- search file

-- Vista tag-viewer
map("n", "<C-m>", ":Vista!!<CR>", default_opts) -- open/close

-- Telescope
-- Find files using Telescope command-line sugar.
map("n", "<leader>ff", "<cmd>Telescope find_files<cr>", default_opts)
map("n", "<leader>fg", "<cmd>Telescope live_grep<cr>", default_opts)
map("n", "<leader>fb", "<cmd>Telescope buffers<cr>", default_opts)
map("n", "<leader>fh", "<cmd>Telescope help_tags<cr>", default_opts)

-- Bufferline
-- Cycle through buffers
map("n", "<TAB>", ":BufferLineCycleNext<CR>", default_opts)
