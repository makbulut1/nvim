local status, gitsigns = pcall(require, "gitsigns")
if not status then
  return
end

gitsigns.setup({
  signs = {
    add = { text = "+" },
    change = { text = "~" },
    delete = { text = "_" },
    topdelete = { text = "‾" },
    changedelete = { text = "~" },
  },
  on_attach = function(bufnr)
    local gs = package.loaded.gitsigns
    local opts = { buffer = bufnr }
    vim.keymap.set("n", "]c", gs.next_hunk, opts)   -- next git change
    vim.keymap.set("n", "[c", gs.prev_hunk, opts)   -- prev git change
    vim.keymap.set("n", "<leader>ph", gs.preview_hunk, opts)  -- preview hunk
    vim.keymap.set("n", "<leader>gb", gs.blame_line, opts)    -- git blame
  end,
})
