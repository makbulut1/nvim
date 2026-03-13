local status, toggleterm = pcall(require, "toggleterm")
if not status then
  return
end

toggleterm.setup({
  size = 15,
  open_mapping = [[<C-t>]],
  shade_terminals = true,
  direction = "horizontal",
})

-- lazygit entegrasyonu
if vim.fn.executable("lazygit") == 1 then
  local Terminal = require("toggleterm.terminal").Terminal
  local lazygit = Terminal:new({
    cmd = "lazygit",
    direction = "float",
    float_opts = { border = "curved" },
    hidden = true,
  })

  vim.keymap.set("n", "<leader>lg", function() lazygit:toggle() end, { desc = "Lazygit" })
end
