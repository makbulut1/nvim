local opt = vim.opt -- for conciseness

-- line numbers
opt.relativenumber = false
opt.number = true

-- tabs & indentation
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

-- line wrapping
opt.ignorecase = true
opt.smartcase = true

-- cursor line
opt.cursorline = true

-- appearance
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"
opt.mouse = "a"

-- backspace
opt.backspace = "indent,eol,start"

-- clipboard
opt.clipboard:append("unnamedplus")

-- split windows
opt.splitright = true
opt.splitbelow = true

opt.iskeyword:append("-")

-- scroll & performance
opt.scrolloff = 8
opt.sidescrolloff = 8
opt.wrap = false
opt.updatetime = 250
opt.timeoutlen = 500

-- Auto-sync CWD to the project root
vim.api.nvim_create_autocmd("BufEnter", {
  callback = function()
    local buffer_name = vim.api.nvim_buf_get_name(0)
    if buffer_name == "" or buffer_name:match("term://") or buffer_name:match("NvimTree_") then
      return
    end

    local path = vim.fn.expand("%:p:h")
    if path == "" or vim.fn.isdirectory(path) == 0 then
      return
    end

    -- .git, package.json vb. dosyaları arayarak proje kökünü bulur
    local root_file = vim.fs.find({ ".git", "Makefile", "package.json", "go.mod", "Cargo.toml" }, { path = path, upward = true })[1]
    local root = root_file and vim.fs.dirname(root_file) or path

    if vim.fn.isdirectory(root) == 1 then
      vim.api.nvim_set_current_dir(root)
    end
  end,
})


