# nvim config

Kişisel Neovim konfigürasyonu. Lua tabanlı, modern plugin ekosistemi ile geliştirilmektedir.

## Gereksinimler

- [Neovim](https://neovim.io/) >= 0.11
- [Git](https://git-scm.com/)
- [Nerd Font](https://www.nerdfonts.com/) (ikonlar için)
- [ripgrep](https://github.com/BurntSushi/ripgrep) (Telescope live grep için)
- [Node.js](https://nodejs.org/) (Copilot için)
- [Rust/Cargo](https://rustup.rs/) (avante.nvim build için)

### İsteğe Bağlı

- [Go](https://go.dev/) (gopls LSP için)
- [Terraform](https://www.terraform.io/) (terraformls için)
- [lazygit](https://github.com/jesseduffield/lazygit) (`<leader>lg` için)
- `ANTHROPIC_API_KEY` (avante.nvim Claude entegrasyonu için)

## Kurulum

```bash
# Gereksinimler (macOS)
brew install neovim git ripgrep lazygit rust node

# Mevcut config varsa yedekle
mv ~/.config/nvim ~/.config/nvim.bak

# Repoyu klonla
git clone https://github.com/makbulut1/nvim.git ~/.config/nvim

# Neovim'i aç — lazy.nvim otomatik kurulacak
nvim
```

Neovim açılınca `:Lazy sync` ile tüm pluginler kurulur.

## Pluginler

| Plugin | Açıklama |
|---|---|
| [lazy.nvim](https://github.com/folke/lazy.nvim) | Plugin yöneticisi |
| [mason.nvim](https://github.com/williamboman/mason.nvim) | LSP server yöneticisi |
| [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) | LSP konfigürasyonu |
| [nvim-cmp](https://github.com/hrsh7th/nvim-cmp) | Otomatik tamamlama |
| [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) | Syntax highlighting |
| [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) | Fuzzy finder |
| [nvim-tree.lua](https://github.com/nvim-tree/nvim-tree.lua) | Dosya gezgini |
| [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim) | Git entegrasyonu |
| [toggleterm.nvim](https://github.com/akinsho/toggleterm.nvim) | Terminal |
| [avante.nvim](https://github.com/yetone/avante.nvim) | AI asistan (Cursor benzeri) |
| [copilot.lua](https://github.com/zbirenbaum/copilot.lua) | GitHub Copilot |
| [render-markdown.nvim](https://github.com/MeanderingProgrammer/render-markdown.nvim) | Markdown render |
| [which-key.nvim](https://github.com/folke/which-key.nvim) | Keybind yardımcısı |
| [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim) | Statusline |
| [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim) | Git inline blame & hunk yönetimi |
| [nvim-autopairs](https://github.com/windwp/nvim-autopairs) | Otomatik parantez/tırnak kapama |
| [42-header.nvim](https://github.com/Diogo-ss/42-header.nvim) | 42 okul header |
| [markdown-preview.nvim](https://github.com/iamcco/markdown-preview.nvim) | Tarayıcıda markdown preview |

## Keybindings

`<leader>` = `Space`

### Genel

| Kısayol | Açıklama |
|---|---|
| `jk` | Insert moddan çık |
| `Space + nh` | Highlight temizle |
| `Space + e` | Dosya gezgini |

### Pencere & Tab

| Kısayol | Açıklama |
|---|---|
| `Space + sv/sh` | Dikey/Yatay böl |
| `Space + se/sx` | Eşitle/Kapat |
| `Space + sm` | Maximize toggle |
| `Space + to/tx/tn/tp` | Tab aç/kapat/sonraki/önceki |

### Telescope

| Kısayol | Açıklama |
|---|---|
| `Space + ff` | Dosya ara |
| `Space + fs` | İçerik ara (grep) |
| `Space + fc` | İmleçteki kelimeyi ara |
| `Space + fb` | Buffer'lar |

### LSP

| Kısayol | Açıklama |
|---|---|
| `gd` | Tanıma git |
| `Ctrl + o` | Geri dön (jump list) |
| `Ctrl + i` | İleri git (jump list) |
| `gD` | Bildirimine git |
| `gi` | Implementasyona git |
| `gr` | Referanslar |
| `K` | Hover dokümantasyon |
| `Space + rn` | Yeniden adlandır |
| `Space + ca` | Code action |
| `Space + d` | Diagnostic göster |
| `[d / ]d` | Önceki/Sonraki diagnostic |

### Terminal & Git

| Kısayol | Açıklama |
|---|---|
| `Ctrl + t` | Terminal aç/kapat |
| `Space + lg` | Lazygit (kurulu ise) |

### AI (avante.nvim)

| Kısayol | Açıklama |
|---|---|
| `Space + aa` | AI'ya sor |
| `Space + ae` | Seçili kodu düzenle |
| `Space + at` | Paneli aç/kapat |

### Markdown

| Kısayol | Açıklama |
|---|---|
| `Space + mt` | Render toggle |
| `Space + mp` | Browser preview |

## Katkı

Bkz. [CONTRIBUTING.md](CONTRIBUTING.md)
