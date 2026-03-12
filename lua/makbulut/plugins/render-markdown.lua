local status, render_markdown = pcall(require, "render-markdown")
if not status then
  return
end

vim.keymap.set("n", "<leader>mt", ":RenderMarkdown toggle<CR>", { desc = "Markdown render toggle" })

render_markdown.setup({
  enabled = true,
  render_modes = { "n", "c" },
  html = { enabled = false },
  latex = { enabled = false },
  heading = {
    enabled = true,
    sign = true,
    icons = { "# ", "## ", "### ", "#### ", "##### ", "###### " },
  },
  code = {
    enabled = true,
    sign = true,
    style = "full",
  },
  bullet = {
    enabled = true,
    icons = { "●", "○", "◆", "◇" },
  },
})
