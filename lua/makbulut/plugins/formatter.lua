-- formatter.util modülünü yükleme
local status_ok, formatter = pcall(require, "formatter")
if not status_ok then
  return
end

formatter.setup({
  -- Logging ayarları
  logging = true,
  log_level = vim.log.levels.WARN,

  -- Formatter ayarlarını dosya türlerine göre yapıyoruz
  filetype = {
    -- Lua dosya türü için formatter ayarları
    lua = {
      -- "formatter.filetypes.lua" modülünü kullanarak stil ayarlarını yapıyoruz
      require("formatter.filetypes.lua").stylua,

      -- Alternatif olarak, kendi formatter fonksiyonumuzu tanımlayabiliriz
      function()
        -- Koşullu biçimlendirme: 'special.lua' dosyasında biçimlendirme yapılmasın
        if vim.fn.expand('%:t') == "special.lua" then
          return nil
        end

        -- stylua için tam yapılandırma
        return {
          exe = "stylua",  -- çalıştırılacak komut
          args = {
            "--search-parent-directories",  -- üst dizinleri ara
            "--stdin-filepath", vim.fn.fnameescape(vim.fn.expand("%:p")),  -- dosya yolunu kaçır
            "--", "-",
          },
          stdin = true,  -- stdin üzerinden veri al
        }
      end
    },

    -- Genel dosya türleri için formatter ayarları
    ["*"] = {
      -- Whitespace temizleme işlemi
      require("formatter.filetypes.any").remove_trailing_whitespace,
    }
  }
})

