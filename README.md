# DayiAutoMod

Minecraft 1.19.4 Paper/Spigot tabanlı sunucular için otomatik chat moderasyon eklentisi.

## Özellikler
- Reklam / IP / URL / Discord davet linki algılama
- Küfür/uygunsuz kelime filtresi
- Aynı mesajı tekrar tekrar gönderme (spam) kontrolü
- Aşırı büyük harf kontrolü
- Uyarı sistemi
- Belirli uyarı sayısından sonra otomatik mute
- Kalıcı `data.yml` ile mute/uyarı kaydı
- Yetkili bildirimleri
- Yetkili bypass
- `/otomasyon check` ile mesaj testi
- `/otomasyon reload` ile config yenileme

## Kurulum
1. Java 17 kullan.
2. Projeyi Maven ile derle:
   `mvn clean package`
3. `target/DayiAutoMod-1.0.0.jar` dosyasını `plugins` klasörüne at.
4. Sunucuyu başlat.
5. `plugins/DayiAutoMod/config.yml` içindeki `profanity.words` listesini kendi filtresine göre düzenle.
6. `/otomasyon reload`

## Komutlar
- `/otomasyon reload`
- `/otomasyon check <mesaj>`
- `/otomasyon mute <oyuncu> <dakika>`
- `/otomasyon unmute <oyuncu>`

## Yetkiler
- `dayiautomod.admin`
- `dayiautomod.bypass`

## Not
Filtre listesi özellikle örnek kelimelerle bırakılmıştır. Kendi sunucunun kurallarına göre `config.yml` içindeki kelime listesini doldurman gerekir.
