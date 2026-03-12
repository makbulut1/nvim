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
