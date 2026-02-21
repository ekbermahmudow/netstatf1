# netstatf1

## Layihə haqqında
**netstatf1** Linux/Unix mühitində şəbəkə bağlantılarını izləmək və sistemdə açıq portları yoxlamaq üçün hazırlanmış sadə **netstat əsaslı** utilitidir. Layihənin məqsədi, sistem administratorları və kiber təhlükəsizliklə maraqlananlar üçün şəbəkə trafiki və socket vəziyyətlərini daha rahat analiz etməyə kömək etməkdir.

## Nə edir?
- Aktiv TCP/UDP bağlantılarını göstərir
- Dinləyən (LISTEN) portları tapır
- Proses adı / PID ilə əlaqələndirmə (sistem imkan verdikdə)
- Sadə filtr və axtarış yanaşması ilə çıxışın oxunaqlığını artırır

## Kiber təhlükəsizlikdə istifadəsi
Bu tip alətlər aşağıdakı hallarda faydalıdır:
- Şübhəli şəbəkə aktivliyinin aşkarlanması
- Backdoor və ya icazəsiz servislərin müəyyən edilməsi
- İstifadə olunmayan portların bağlanması üçün audit
- SOC/Blue Team gündəlik yoxlamalarında sürətli baxış

> Qeyd: Nəticələri düzgün şərh etmək üçün sistemdə hansı servislərin normal işlədiyini bilməyiniz tövsiyə olunur.

## Quraşdırma
Repo-nu klonlayın:
```bash
git clone https://github.com/ekbermahmudow/netstatf1.git
cd netstatf1
```

## İstifadə
Layihədə icra olunan fayl/script varsa, tipik istifadə belə olur:
```bash
./netstatf1
```

Əlavə parametrlər mövcuddursa, kömək menyusuna baxın:
```bash
./netstatf1 --help
```

## Nümunələr
Dinləyən portları göstərmək (klassik netstat nümunəsi):
```bash
netstat -tulnp
```

Aktiv bağlantıları g��stərmək:
```bash
netstat -tunp
```

## Tövsiyələr (Best Practices)
- Serverlərdə mütəmadi audit edin və gözlənilməz portlara diqqət yetirin
- Firewall qaydalarınızı (iptables/nftables) port siyahısına uyğunlaşdırın
- Mümkün olduqda `ss` kimi daha müasir alternativlərlə nəticələri müqayisə edin

## Yol Xəritəsi (Roadmap)
- [ ] Daha oxunaqlı çıxış (rəngləmə / cədvəl formatı)
- [ ] JSON çıxış dəstəyi
- [ ] Filtr: port, protokol, PID, proses adı
- [ ] Minimal loglama və export

## Töhfə vermək
Töhfələrə açığıq. Təklif, bug report və ya PR göndərə bilərsiniz.

## Lisenziya
Layihənin lisenziyasını repo daxilindəki LICENSE faylında göstərin (əgər əlavə edəcəksiniz).