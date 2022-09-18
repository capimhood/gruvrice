local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }
vim.g.mapleader = " "

-- MAKE
map("n", "<S-m>", ":make<CR>", opts)

-- Spliting
map("n", "<S-s>", ":vsplit ", opts)
map("i", "jk", "<ESC>", opts)

-- Tab
map("n", "<S-T>", ":tabnew ", opts)

-- Quitting and saving
map("n", "<S-q>", ":quit<CR>", opts)
map("n", "<S-w>", ":write<CR>", opts)

---------------------------------------------------
--               Window Management               --
---------------------------------------------------

-- Window navigation
map("n", "<C-h>", "<C-W>h", opts)
map("n", "<C-j>", "<C-W>j", opts)
map("n", "<C-k>", "<C-W>k", opts)
map("n", "<C-l>", "<C-W>l", opts)

-- Window resize
map("n", "<C-Up>", ":resize -2<CR>", opts)
map("n", "<C-Down>", ":resize +2<CR>", opts)
map("n", "<C-Left>", ":vertical resize -2<CR>", opts)
map("n", "<C-Right>", ":vertical resize +2<CR>", opts)


---------------------------------------------------
--                   Programs                    --
---------------------------------------------------

-- Nvim Tree
map("n", "<C-n>", ":NvimTreeToggle<CR>", opts)
