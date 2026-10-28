-- pip install --user c_formatter_42 komutu ile kurulan norm formatter'ını
-- doğrudan çalıştırır. formatter.nvim'in stdin job zinciri bu araçla eksik
-- sonuç ürettiği için (tab hizalama ve NL_AFTER_VAR_DECL kayboluyor),
-- burada senkron ve dosya üzerinde çalışan basit bir yol izliyoruz.
local M = {}

function M.resolve()
  local candidates = {
    vim.fn.expand("~/Library/Python/3.9/bin/c_formatter_42"),
    vim.fn.exepath("c_formatter_42"),
  }
  for _, path in ipairs(candidates) do
    if path ~= "" and vim.fn.executable(path) == 1 then
      return path
    end
  end
  return "c_formatter_42"
end

function M.format()
  local ft = vim.bo.filetype
  if ft ~= "c" and ft ~= "h" and ft ~= "cpp" then
    vim.notify("c_formatter_42: sadece C/H dosyalarında çalışır", vim.log.levels.WARN)
    return
  end

  vim.cmd("silent update")

  local exe = M.resolve()
  local path = vim.fn.expand("%:p")
  local result = vim.fn.system({ exe, path })

  if vim.v.shell_error ~= 0 then
    vim.notify("c_formatter_42 hata verdi:\n" .. result, vim.log.levels.ERROR)
    return
  end

  vim.cmd("edit!")
  vim.notify("Norm'a göre formatlandı: " .. vim.fn.fnamemodify(path, ":t"))
end

return M
