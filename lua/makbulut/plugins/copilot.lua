
local status_ok, copilot = pcall(require, "copilot")
if not status_ok then
  return
end

copilot.setup({
  -- PANEL AYARLARI (Ayrı pencere: :Copilot panel)
  panel = {
    enabled = true,
    auto_refresh = false,
    keymap = {
      jump_prev = "[[",     -- Panelin içindeyken önceki öneri
      jump_next = "]]",     -- Panelin içindeyken sonraki öneri
      accept = "<CR>",      -- Enter ile kabul et
      refresh = "gr",       -- Listeyi yenile
      open = "<C-o>"       -- Control + o (Paneli açmak için)
    },
    layout = {
      position = "bottom",
      ratio = 0.4
    },
  },

  -- SUGGESTION AYARLARI (Kod yazarken çıkan gri hayalet metin)
  suggestion = {
    enabled = true,
    auto_trigger = true,
    debounce = 75,
    keymap = {
      -- MAC İÇİN EN UYGUN KISAYOLLAR
      
      -- Kabul Etme: Control + L 
      -- (Neden? Sağ el yüzük parmağıyla kolay basılır, "Line" tamamla gibi düşünülebilir)
      accept = "<C-l>", 
      
      -- Sonraki Öneri: Control + J
      -- (Vim'de J aşağı gitmek demektir, burada sonraki öneriye geçer)
      next = "<C-j>",
      
      -- Önceki Öneri: Control + K
      -- (Vim'de K yukarı gitmek demektir, burada önceki öneriye döner)
      prev = "<C-k>",
      
      -- Kapat / Reddet: Control + H
      dismiss = "<C-h>",
    },
  },

  -- DOSYA TİPLERİ (Temizlendi)
  filetypes = {
    ["*"] = true,        -- Tüm dosyalarda aktif
    ["help"] = false,    -- Yardım dosyalarında kapalı
    ["gitcommit"] = false, 
    ["TelescopePrompt"] = false, -- Telescope arama çubuğunda çıkmasın
  },
  
  copilot_node_command = 'node', 
  server_opts_overrides = {},
})

