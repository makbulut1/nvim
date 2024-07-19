local mason_status, mason = pcall(require, "mason")
if not mason_status then
  return
end

local terraform_ls_status, mason_lspconfig = pcall(require, "mason_lspconfig")
if not terraform_ls_status then
  return
end

mason.setup()

terraform_ls.setup({
  ensure_installed = {
  }
})
