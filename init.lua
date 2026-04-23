-- Add homebrew paths to PATH
local homebrew_paths = { "/opt/homebrew/bin", "/usr/local/bin" }
for _, path in ipairs(homebrew_paths) do
  if vim.fn.isdirectory(path) == 1 then
    vim.env.PATH = path .. ":" .. vim.env.PATH
  end
end

vim.g.mapleader = " "
require("makbulut.plugins-setup")
require("makbulut.core.options")
require("makbulut.core.keymaps")
require("makbulut.core.colorscheme")
require("makbulut.plugins.header")
require("makbulut.plugins.comment")
require("makbulut.plugins.nvim-tree")
require("makbulut.plugins.lualine")
require("makbulut.plugins.telescope")
require("makbulut.plugins.nvim-cmp")
require("makbulut.plugins.lsp.mason")
require("makbulut.plugins.lsp.lspconfig")
require("makbulut.plugins.copilot")
require("makbulut.plugins.formatter")
require("makbulut.plugins.treesitter")
require("makbulut.plugins.autopairs")
require("makbulut.plugins.gitsigns")
require("makbulut.plugins.toggleterm")
require("makbulut.plugins.which-key")
require("makbulut.plugins.avante")
require("makbulut.plugins.remote-nvim")
require("makbulut.plugins.render-markdown")
require("makbulut.plugins.markdown-preview")
require("makbulut.plugins.persistence")

