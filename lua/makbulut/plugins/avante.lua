local status, avante = pcall(require, "avante")
if not status then
  return
end

avante.setup({
  provider = "claude",
  providers = {
    claude = {
      endpoint = "https://api.anthropic.com",
      model = "claude-haiku-4-5-20251001",
      timeout = 30000,
      extra_request_body = {
        temperature = 0,
        max_tokens = 4096,
      },
    },
  },
  behaviour = {
    auto_suggestions = false,
    auto_set_highlight_group = true,
    auto_set_keymaps = true,
    auto_apply_diff_after_generation = false,
    support_paste_from_clipboard = false,
  },
  mappings = {
    ask = "<leader>aa",
    edit = "<leader>ae",
    refresh = "<leader>ar",
    toggle = {
      default = "<leader>at",
      debug = "<leader>ad",
      hint = "<leader>ah",
    },
  },
  hints = { enabled = true },
  windows = {
    position = "right",
    wrap = true,
    width = 30,
  },
})
