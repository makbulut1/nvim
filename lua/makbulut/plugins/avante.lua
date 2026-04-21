local status, avante = pcall(require, "avante")
if not status then
  return
end

-- Context uzunluğuna göre otomatik model seç
-- Kısa (<500 token) → haiku, uzun → sonnet
local function smart_provider()
  local buf = vim.api.nvim_get_current_buf()
  local line_count = vim.api.nvim_buf_line_count(buf)
  if line_count > 200 then
    return "claude_sonnet"
  end
  return "claude_haiku"
end

avante.setup({
  provider = smart_provider(),
  providers = {
    claude_haiku = {
      __inherited_from = "claude",
      model = "claude-haiku-4-5-20251001",
      extra_request_body = {
        temperature = 0,
        max_tokens = 4096,
      },
    },
    claude_sonnet = {
      __inherited_from = "claude",
      model = "claude-sonnet-4-6",
      extra_request_body = {
        temperature = 0,
        max_tokens = 8096,
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
