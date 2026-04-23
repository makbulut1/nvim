local status_ok, copilot = pcall(require, "copilot")
if not status_ok then
  return
end

copilot.setup({
  suggestion = {
    enabled = false,
    auto_trigger = false,
    debounce = 75,
    keymap = {
      accept = "<C-l>",
      next = "<C-j>",
      prev = "<C-k>",
      dismiss = "<C-h>",
    },
  },

  panel = {
    enabled = false,
    auto_refresh = false,
  },

  filetypes = {
    ["*"] = true,
    ["cvs"] = false,
    ["sh"] = false,
    ["env"] = false,
    ["gitcommit"] = false,
    ["TelescopePrompt"] = false,
  },

  copilot_node_command = 'node',
  server_opts_overrides = {},
})

