-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git", "clone", "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({

  -- lua functions
  "nvim-lua/plenary.nvim",

  -- colorscheme
  "bluz71/vim-nightfly-guicolors",

  -- tmux & split window navigation
  "christoomey/vim-tmux-navigator",

  -- window maximizer
  "szw/vim-maximizer",

  -- essential plugins
  "tpope/vim-surround",
  "vim-scripts/ReplaceWithRegister",

  -- commenting
  "numToStr/Comment.nvim",

  -- file explorer
  "nvim-tree/nvim-tree.lua",

  -- icons
  "nvim-web-devicons",

  -- statusline
  "nvim-lualine/lualine.nvim",

  -- autocompletion
  "hrsh7th/nvim-cmp",
  "hrsh7th/cmp-buffer",
  "hrsh7th/cmp-path",

  -- fuzzy finding
  { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
  { "nvim-telescope/telescope.nvim", branch = "0.1.x" },

  -- snippets
  "L3MON4D3/LuaSnip",
  "saadparwaiz1/cmp_luasnip",
  "rafamadriz/friendly-snippets",

  -- lsp
  "williamboman/mason.nvim",
  "williamboman/mason-lspconfig.nvim",
  "neovim/nvim-lspconfig",
  "hrsh7th/cmp-nvim-lsp",

  -- treesitter
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
  },

  -- auto closing
  "windwp/nvim-autopairs",
  "windwp/nvim-ts-autotag",

  -- git
  "lewis6991/gitsigns.nvim",

  -- which-key
  "folke/which-key.nvim",

  -- terminal
  "akinsho/toggleterm.nvim",

  -- 42 header
  "Diogo-ss/42-header.nvim",

  -- terraform
  "hashivim/vim-terraform",

  -- copilot
  "zbirenbaum/copilot.lua",

  -- formatter
  "mhartington/formatter.nvim",

  -- markdown
  "MeanderingProgrammer/render-markdown.nvim",
  {
    "iamcco/markdown-preview.nvim",
    build = function() vim.fn["mkdp#util#install"]() end,
  },

})
