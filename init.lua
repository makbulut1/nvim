-- Add homebrew paths to PATH
local homebrew_paths = { "/opt/homebrew/bin", "/usr/local/bin" }
for _, path in ipairs(homebrew_paths) do
  if vim.fn.isdirectory(path) == 1 then
    vim.env.PATH = path .. ":" .. vim.env.PATH
  end
end

vim.g.mapleader = " "

-- Temel ayarlar ve keymap'ler her zaman yüklenir
require("makbulut.plugins-setup")
require("makbulut.core.options")
require("makbulut.core.keymaps")
require("makbulut.core.colorscheme")

-- Diğer tüm plugin config'leri lazy.nvim'in config callback'leri üzerinden yükleniyor.
-- plugins-setup.lua'ya bakın.
