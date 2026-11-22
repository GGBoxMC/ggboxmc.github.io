# GGBox Launcher GitHub Pages Yayınlama Scripti
Write-Host "==========================================" -ForegroundColor Magenta
Write-Host "  GGBox Launcher - ggboxmc.github.io Deploy " -ForegroundColor Cyan
Write-Host "==========================================" -ForegroundColor Magenta

# Git kontrolü
$gitCmd = Get-Command git -ErrorAction SilentlyContinue

if (-not $gitCmd) {
    Write-Host "`n[UYARI] Git komutu sisteminizde bulunamadi." -ForegroundColor Yellow
    Write-Host "Git'i https://git-scm.com/download/win adresinden kurabilir veya" -ForegroundColor Gray
    Write-Host "dosyalari dogrudan https://github.com/ggboxmc/ggboxmc.github.io reposuna surukleyip birakabilirsiniz.`n" -ForegroundColor Gray
    pause
    exit
}

Write-Host "`n[1/4] Git deposu baslatiliyor..." -ForegroundColor Green
if (-not (Test-Path ".git")) {
    git init
    git branch -M main
}

Write-Host "[2/4] Dosyalar ekleniyor ve commit ediliyor..." -ForegroundColor Green
git add .
git commit -m "feat: GGBox Launcher resmi indirme sitesi ve kurulum dosyalari (v0.31.0)"

Write-Host "[3/4] GitHub remote kontrol ediliyor..." -ForegroundColor Green
$remotes = git remote
if ($remotes -notcontains "origin") {
    git remote add origin https://github.com/lopix31/ggboxmc.github.io.git
} else {
    git remote set-url origin https://github.com/lopix31/ggboxmc.github.io.git
}

Write-Host "[4/4] GitHub'a gonderiliyor (Push)..." -ForegroundColor Green
Write-Host "GitHub giris penceresi acilirsa lutfen onaylayin.`n" -ForegroundColor Gray
git push -u origin main

Write-Host "`n==========================================" -ForegroundColor Magenta
Write-Host " Tebrikler! ggboxmc.github.io yayina gonderildi!" -ForegroundColor Green
Write-Host " 1-2 dakika icinde https://ggboxmc.github.io adresinden erisebilirsiniz." -ForegroundColor Cyan
Write-Host "==========================================" -ForegroundColor Magenta
pause
