local status_ok, copilot = pcall(require, "copilot")
if not status_ok then
  return
end


copilot.setup({
  panel = {
    enabled = true,
    auto_refresh = false,
    keymap = {
      jump_prev = "<C-p>",   -- Ctrl + p
      jump_next = "<C-n>",   -- Ctrl + n
      accept = "<C-Space>",  -- Ctrl + Space
      refresh = "<C-r>",     -- Ctrl + r
      open = "<C-o>"         -- Ctrl + o (Paneli açmak için, isteğe bağlı bir kısayol)
    },
    layout = {
      position = "bottom", -- | top | left | right
      ratio = 0.4
    },
  },
  suggestion = {
    enabled = true,
    auto_trigger = true,
    debounce = 75,
    keymap = {
      accept = "<Tab>",  -- Ctrl + Space
      next = "<C-n>",        -- Ctrl + n
      prev = "<C-p>",        -- Ctrl + p
      dismiss = "<C-d>",     -- Ctrl + d (Öneriyi kapatmak için, isteğe bağlı bir kısayol)
    },
  },
  filetypes = {
    -- Etkinleştirmek istediğiniz diller
    ["c"] = true,
    ["cpp"] = true,
    ["python"] = true,
    ["dockerfile"] = true,
    ["lua"] = true,
    ["terraform"] = true,
    ["javascript"] = true,
    ["typescript"] = true,
    -- Diğer dilleri varsayılan olarak devre dışı bırak
    ["*"] = true,
  },
  copilot_node_command = 'node', -- Node.js version must be >= 18.x
  server_opts_overrides = {},
})
