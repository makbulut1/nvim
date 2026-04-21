local status, which_key = pcall(require, "which-key")
if not status then
  return
end

which_key.setup({
  delay = 300,
})

which_key.add({
  { "<leader>f", group = "Telescope" },
  { "<leader>ff", desc = "Dosya ara" },
  { "<leader>fs", desc = "İçerik ara (grep)" },
  { "<leader>fc", desc = "İmleçteki kelimeyi ara" },
  { "<leader>fb", desc = "Buffer'lar" },
  { "<leader>fh", desc = "Help ara" },

  { "<leader>s", group = "Split" },
  { "<leader>sv", desc = "Dikey böl" },
  { "<leader>sh", desc = "Yatay böl" },
  { "<leader>se", desc = "Eşitle" },
  { "<leader>sx", desc = "Kapat" },
  { "<leader>sm", desc = "Maximize toggle" },

  { "<leader>t", group = "Tab" },
  { "<leader>to", desc = "Yeni tab" },
  { "<leader>tx", desc = "Tabı kapat" },
  { "<leader>tn", desc = "Sonraki tab" },
  { "<leader>tp", desc = "Önceki tab" },

  { "<leader>m", group = "Markdown" },
  { "<leader>mt", desc = "Render toggle" },
  { "<leader>mp", desc = "Browser preview başlat" },
  { "<leader>ms", desc = "Browser preview durdur" },

  { "<leader>h", group = "Header" },
  { "<leader>hh", desc = "42 header ekle" },

  { "<leader>e", desc = "Dosya gezgini" },
  { "<leader>nh", desc = "Highlight temizle" },

  { "g", group = "LSP" },
  { "gd", desc = "Tanıma git" },
  { "gD", desc = "Bildirimine git" },
  { "gi", desc = "Implementasyona git" },
  { "gr", desc = "Referanslar" },
  { "K", desc = "Hover dokümantasyon" },

  { "<leader>r", group = "Refactor" },
  { "<leader>rn", desc = "Yeniden adlandır" },
  { "<leader>ca", desc = "Code action" },
  { "<leader>d", desc = "Diagnostic göster" },
  { "<leader>p", group = "Yol (Kopyala)" },
  { "<leader>pa", desc = "Tam yolu kopyala" },
  { "<leader>pr", desc = "Göreceli yolu kopyala" },
  { "<leader>pn", desc = "Dosya adını kopyala" },
})
