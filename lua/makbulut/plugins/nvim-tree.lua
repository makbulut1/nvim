local setup, nvimtree = pcall(require, "nvim-tree")
if not setup then
  return
end

-- recommended settings from nvim-tree documentation
vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1

vim.cmd([[ highlight NvimTreeIndentMarker guifg=#3FC5FF]])

nvimtree.setup({
  sync_root_with_cwd = true,
  renderer = {
    icons = {
      glyphs = {
        folder = {
          arrow_closed = ">", -- arrow when folder is closed
          arrow_open = "⬇️" -- arrow when folder ıs open
        },
      },
    },
  },
  update_focused_file = {
    enable = true,
    update_root = false,
  },
  actions = {
    open_file = {
      window_picker = {
        enable = false,
      },
    },
  },
})
