# GGBox Launcher — Resmî İndirme Sitesi (ggboxmc.github.io)

Bu depo, [GGBox Launcher](https://github.com/ggboxmc) için hazırlanmış olan resmi web sitesidir.
Sitenin canlı yayını: **https://ggboxmc.github.io**

---

## 🚀 GitHub Pages Üzerinde Yayına Alma Adımları

Web sitesini `ggboxmc.github.io` adresinde yayınlamak için aşağıdaki 2 yöntemden birini kullanabilirsiniz:

### Yöntem 1: GitHub Web Arayüzü ile (En Kolay)
1. **GitHub'da Repo Oluşturun:**
   - GitHub hesabınızın kullanıcı adı veya organizasyon adı `ggboxmc` ise:
   - Yeni bir repository açın ve adını **`ggboxmc.github.io`** koyun.
   - Public (Herkese açık) olarak seçin.
2. **Dosyaları Yükleyin:**
   - "uploading an existing file" seçeneğine tıklayın.
   - `ggboxmc.github.io` klasöründeki tüm dosyaları (`index.html`, `styles.css`, `script.js`, `assets/`, `downloads/` vb.) sürükleyip bırakın ve **Commit changes** deyin.
3. **Yayın:**
   - Depo adı `ggboxmc.github.io` olduğu için GitHub Pages **otomatik olarak aktifleşir**.
   - Birkaç dakika içinde siteniz `https://ggboxmc.github.io` adresinde canlıya geçer!

---

### Yöntem 2: Git Komut Satırı ile
Eğer bilgisayarınızda Git kuruluysa terminali bu klasörde açıp şu komutları çalıştırabilirsiniz:

```bash
git init
git add .
git commit -m "feat: GGBox Launcher resmi web sitesi ve indirme merkezi"
git branch -M main
git remote add origin https://github.com/ggboxmc/ggboxmc.github.io.git
git push -u origin main
```

---

## 🎨 Tasarım ve Özellikler
- **Renk ve Tema:** GGBox Launcher'ın orijinal Neon Pembe (`#ff3db4`), Siyah zemin (`#09090b`) ve Cyberpunk/Gaming estetiği ile %100 uyumludur.
- **İndirme:** v0.31.0 Windows Setup (`GGBox-Launcher-Setup-0.31.0-Signed.exe`) doğrudan sitenin `downloads/` klasöründen indirilebilir durumdadır.
- **Duyarlı Tasarım:** Mobil, tablet ve masaüstü ekranlarda kusursuz çalışır.
