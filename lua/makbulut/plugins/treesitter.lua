local status, treesitter = pcall(require, "nvim-treesitter.configs")
if not status then
  return
end

treesitter.setup({
  highlight = { enable = true },
  indent = { enable = true },
  autotag = { enable = true },
  ensure_installed = {
    "lua",
    "go",
    "terraform",
    "hcl",
    "bash",
    "json",
    "yaml",
    "markdown",
    "dockerfile",
  },
  auto_install = true,
})
