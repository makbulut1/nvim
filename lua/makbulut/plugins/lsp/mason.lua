local mason_status, mason = pcall(require, "mason")
if not mason_status then
  return
end

local mason_lspconfig_status, mason_lspconfig = pcall(require, "mason-lspconfig")
if not mason_lspconfig_status then
  return
end

mason.setup()

-- ripgrep ve fd gibi sistem araçlarını otomatik kur
local registry_status, registry = pcall(require, "mason-registry")
if registry_status then
  local tools = { "ripgrep", "fd" }
  for _, tool in ipairs(tools) do
    local ok, pkg = pcall(registry.get_package, tool)
    if ok and not pkg:is_installed() then
      pkg:install()
    end
  end
end

mason_lspconfig.setup({
  ensure_installed = {
    "lua_ls",
    "terraformls",
    "gopls",
  },
  automatic_installation = true,
})
