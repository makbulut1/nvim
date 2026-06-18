local status_ok, copilot = pcall(require, "copilot")
if not status_ok then
  return
end

copilot.setup({
  suggestion = {
    enabled = true,
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
    enabled = true,
    auto_refresh = true,
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

