-- markdown-preview: tarayıcıda canlı MD önizleme
-- :MarkdownPreview  -> başlat
-- :MarkdownPreviewStop -> durdur

vim.g.mkdp_auto_close = 1
vim.g.mkdp_refresh_slow = 0
vim.g.mkdp_browser = ""

local keymap = vim.keymap
keymap.set("n", "<leader>mp", ":MarkdownPreview<CR>", { desc = "Markdown preview başlat" })
keymap.set("n", "<leader>ms", ":MarkdownPreviewStop<CR>", { desc = "Markdown preview durdur" })
