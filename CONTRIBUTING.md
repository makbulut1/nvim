# Katkı Rehberi

## Branch Stratejisi

```
feature/branch  ──►  develop  ──►  main (release)
```

- `main` — kararlı sürümler, yalnızca `develop`'tan PR ile güncellenir
- `develop` — aktif geliştirme branch'i
- Feature branch'ler `develop`'tan açılır, `develop`'a merge edilir

## Branch İsimlendirme

| Tür | Format | Örnek |
|---|---|---|
| Yeni özellik | `feat/<isim>` | `feat/lazygit` |
| Hata düzeltme | `fix/<isim>` | `fix/gopls-conditional` |
| Temizlik | `chore/<isim>` | `chore/cleanup` |
| Dokümantasyon | `docs/<isim>` | `docs/readme` |

## Commit Mesajları

[Conventional Commits](https://www.conventionalcommits.org/) standardı:

```
feat: yeni özellik ekle
fix: hata düzelt
chore: temizlik/bakım
docs: dokümantasyon güncelle
refactor: kod yeniden düzenle
```

## PR Süreci

1. `develop`'tan branch aç
2. Değişikliklerini yap, commit at
3. `develop`'a PR aç
4. Test planını doldur
5. Merge et

## Release Süreci

Tüm milestone issue'ları tamamlanınca:

1. `develop` → `main` PR aç
2. Merge et
3. Git tag oluştur: `git tag v1.0.0`
4. GitHub Release yayınla
