vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

-- general keymaps
keymap.set("i", "jk", "<ESC>")

keymap.set("n", "<leader>nh", ":nohl<CR>")

keymap.set("n", "x", '"_x"')

keymap.set("n", "<leader>+", "<C-a>")
keymap.set("n", "<leader>-", "<C-x>")

keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=") -- make split windows equal width
keymap.set("n", "<leader>sx", ":close<CR>") -- close current split window

keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab
keymap.set("n", "<leader>tn", ":tabn<CR>") -- go to next tab
keymap.set("n", "<leader>tp", ":tabp<CR>") -- go to previous tab

-- plugin keymaps

-- vim-maximizer
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>")

-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")


-- telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>")
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>")
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>")
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>")
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>")

-- 42 Header
keymap.set("n", "<leader>hh", ":Stdheader<CR>")

-- Yol kopyalama kısayolları
keymap.set("n", "<leader>pa", [[:let @+ = expand("%:p")<CR>:echo "Tam yol kopyalandı"<CR>]], { desc = "Tam yolu kopyala" })
keymap.set("n", "<leader>pr", [[:let @+ = expand("%")<CR>:echo "Göreceli yol kopyalandı"<CR>]], { desc = "Göreceli yolu kopyala" })
keymap.set("n", "<leader>pn", [[:let @+ = expand("%:t")<CR>:echo "Dosya adı kopyalandı"<CR>]], { desc = "Dosya adını kopyala" })

-- macOS Tarzı Navigasyon (Option/Command + Ok Tuşları)
-- Kelime atlama (Option + Sağ/Sol)
keymap.set({ "n", "i" }, "<A-Left>", "<C-o>b", { desc = "Geriye bir kelime atla" })
keymap.set({ "n", "i" }, "<A-Right>", "<C-o>w", { desc = "İleriye bir kelime atla" })

-- macOS/Emacs Tarzı Navigasyon (Çoğu terminalde Command yerine Ctrl+A/E daha iyi çalışır)
keymap.set({ "n", "i", "v" }, "<C-a>", "<C-o>^", { desc = "Satır başına git" })
keymap.set({ "n", "i", "v" }, "<C-e>", "<C-o>$", { desc = "Satır sonuna git" })

-- Kelime atlama (Option + Sağ/Sol)
-- Hem <A-..> hem de manuel Esc sekanslarını ekleyerek terminal uyumluluğunu artırıyoruz
keymap.set({ "n", "i", "v" }, "<A-Left>", "<C-o>b", { desc = "Geriye bir kelime atla" })
keymap.set({ "n", "i", "v" }, "<A-Right>", "<C-o>w", { desc = "İleriye bir kelime atla" })

-- Bazı terminaller için manuel Esc+b/f desteği
keymap.set({ "n", "i", "v" }, "<Esc>b", "<C-o>b", { desc = "Geriye bir kelime atla" })
keymap.set({ "n", "i", "v" }, "<Esc>f", "<C-o>w", { desc = "İleriye bir kelime atla" })

-- Kelime silme (Option + Backspace)
keymap.set("i", "<A-BS>", "<C-w>", { desc = "Bir kelime sil" })
keymap.set("i", "<Esc><BS>", "<C-w>", { desc = "Bir kelime sil" })

-- Session Management (Oturum Yönetimi)
keymap.set("n", "<leader>qs", [[<cmd>lua require("persistence").load()<cr>]], { desc = "Bu dizindeki oturumu yükle" })
keymap.set("n", "<leader>ql", [[<cmd>lua require("persistence").load({ last = true })<cr>]], { desc = "Son oturumu yükle" })
keymap.set("n", "<leader>qd", [[<cmd>lua require("persistence").stop()<cr>]], { desc = "Oturumu kaydetmeyi durdur" })
