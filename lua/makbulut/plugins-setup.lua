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

  -- lua functions (her zaman gerekli)
  "nvim-lua/plenary.nvim",

  -- colorscheme (startup'ta gerekli)
  "bluz71/vim-nightfly-guicolors",

  -- tmux navigasyon
  "christoomey/vim-tmux-navigator",

  -- window maximizer
  { "szw/vim-maximizer", keys = { "<leader>sm" } },

  -- essential plugins
  { "tpope/vim-surround",           event = "BufReadPost" },
  { "vim-scripts/ReplaceWithRegister", event = "BufReadPost" },

  -- commenting
  {
    "numToStr/Comment.nvim",
    event = "BufReadPost",
    config = function() require("makbulut.plugins.comment") end,
  },

  -- file explorer
  {
    "nvim-tree/nvim-tree.lua",
    event = "VeryLazy",
    config = function() require("makbulut.plugins.nvim-tree") end,
  },

  -- icons
  { "nvim-tree/nvim-web-devicons", lazy = true },

  -- statusline
  {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    config = function() require("makbulut.plugins.lualine") end,
  },

  -- autocompletion
  {
    "hrsh7th/nvim-cmp",
    event = "InsertEnter",
    dependencies = {
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "hrsh7th/cmp-nvim-lsp",
      "L3MON4D3/LuaSnip",
      "saadparwaiz1/cmp_luasnip",
      "rafamadriz/friendly-snippets",
    },
    config = function() require("makbulut.plugins.nvim-cmp") end,
  },

  -- fuzzy finding
  {
    "nvim-telescope/telescope.nvim",
    branch = "0.1.x",
    cmd = "Telescope",
    keys = { "<leader>ff", "<leader>fs", "<leader>fc", "<leader>fb" },
    dependencies = {
      { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    },
    config = function() require("makbulut.plugins.telescope") end,
  },

  -- lsp
  {
    "neovim/nvim-lspconfig",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
    },
    config = function()
      require("makbulut.plugins.lsp.mason")
      require("makbulut.plugins.lsp.lspconfig")
    end,
  },

  -- treesitter
  {
    "nvim-treesitter/nvim-treesitter",
    event = { "BufReadPost", "BufNewFile" },
    build = ":TSUpdate",
    config = function() require("makbulut.plugins.treesitter") end,
  },

  -- auto closing
  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    config = function() require("makbulut.plugins.autopairs") end,
  },
  { "windwp/nvim-ts-autotag", event = { "BufReadPost", "BufNewFile" } },

  -- git
  {
    "lewis6991/gitsigns.nvim",
    event = { "BufReadPre", "BufNewFile" },
    config = function() require("makbulut.plugins.gitsigns") end,
  },

  -- which-key
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    config = function() require("makbulut.plugins.which-key") end,
  },

  -- terminal
  {
    "akinsho/toggleterm.nvim",
    keys = { "<leader>tt", "<C-\\>" },
    config = function() require("makbulut.plugins.toggleterm") end,
  },

  -- 42 header
  {
    "Diogo-ss/42-header.nvim",
    cmd = { "Stdheader" },
    config = function() require("makbulut.plugins.header") end,
  },

  -- terraform
  { "hashivim/vim-terraform", ft = { "terraform", "hcl" } },

  -- copilot
  {
    "zbirenbaum/copilot.lua",
    event = "InsertEnter",
    config = function() require("makbulut.plugins.copilot") end,
  },

  -- formatter
  {
    "mhartington/formatter.nvim",
    event = "BufWritePre",
    config = function() require("makbulut.plugins.formatter") end,
  },

  -- avante: sadece keymap tetiklendiğinde yükle
  "MunifTanjim/nui.nvim",
  "stevearc/dressing.nvim",
  {
    "yetone/avante.nvim",
    build = "make",
    keys = { "<leader>aa", "<leader>ae", "<leader>ar", "<leader>at" },
    config = function() require("makbulut.plugins.avante") end,
  },

  -- ssh remote: komut kullanıldığında yükle
  {
    "amitds1997/remote-nvim.nvim",
    cmd = { "RemoteStart", "RemoteStop", "RemoteInfo", "RemoteLog" },
    dependencies = {
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      "nvim-telescope/telescope.nvim",
    },
    config = function() require("makbulut.plugins.remote-nvim") end,
  },

  -- markdown: sadece markdown dosyalarında yükle
  {
    "MeanderingProgrammer/render-markdown.nvim",
    ft = { "markdown" },
    config = function() require("makbulut.plugins.render-markdown") end,
  },
  {
    "iamcco/markdown-preview.nvim",
    ft = { "markdown" },
    build = function() vim.fn["mkdp#util#install"]() end,
  },

  -- session management
  {
    "folke/persistence.nvim",
    event = "BufReadPre",
    config = function() require("makbulut.plugins.persistence") end,
  },

})
