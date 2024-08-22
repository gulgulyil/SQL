CREATE TABLE Urunlerim(
urun_id INT PRIMARY KEY,
ad VARCHAR(100) NOT NULL,
fiyat DECIMAL (10,2),
stok_miktari INT,
kategori VARCHAR(50),
aciklama TEXT,
uretici VARCHAR(100),
renk VARCHAR(20),
agirlik FLOAT,
eklenme_tarihi DATE,
indirim_orani DECIMAL(5,2),
aktif BOOLEAN,
skor INT,
boyut VARCHAR(20),
garantili BOOLEAN,
resim_url VARCHAR(200)
)

SELECT * FROM Urunlerim;


INSERT INTO Urunlerim(urun_id, ad, fiyat, stok_miktari, kategori, aciklama, uretici, renk, agirlik, eklenme_tarihi, indirim_orani, aktif, skor, boyut, garantili, resim_url)
VALUES
(1, 'Akilli telefon', 1499.99, 100, 'Elektronik', '8 GB RAM, 128 GB depolama', 'TechMaster', 'Siyah', 0.15, '2023-08-07', 0.05, true, 4, '6.2 inc', true, 'http://example.com/telefon.jpg'),
(2, 'Dizustu Bilgisayar', 2499.00, 50, 'Bilgisayar', 'Intel i7 islemci, 16 GB RAM', 'TechLaptop', 'Gri', 1.5, '2023-08-07', 0, true, 5, '15.6 inc', true, 'http://example.com/laptop.jpg'),
(3, 'Akilli Saat', 399.00, 80, 'Saat ve Taki', 'Kalp atis hizi izleme, adimsayar', 'TimeTech', 'Siyah', 0.05, '2023-08-07', 0.1, true, 4, 'Unisex', true, 'http://example.com/saat.jpg'),
(4, 'Kablosuz Kulaklik', 79.99, 150, 'Kulaklik ve Hoparlorler', 'Bluetooth baglanti, 10 saat pil omru', 'SoundTech', 'Beyaz', 0.03, '2023-08-08', 0.2,true, 4, 'Standart', true, 'http://example.com/kablossuzKulaklik.jpg'),
(5, 'Led TV',1999.00, 20, 'Televizyonlar', '55 inc 4K UHD Smart TV', 'TechVision', 'Siyah', 18.5, '2023-08-09', 0.15, true, 5,'55 inc', true, 'http://example.com/tv.jpg'),
(6, 'Oyun Konsolu', 499.00, 30, 'Oyun ve Eglence', '1 TB depolama, 4K oyun destegi', 'GameMaster', 'Siyah', 4.2, '2023-08-09', 0.1, true, 4, 'Standard', true, 'http://example.com/oyunkonsolu.jpg'),
(7, 'Tasinabilir Sarj Cihazi', 39.99, 200, 'Aksesuarlar', '10.000 mAh pil kapasitesi', 'PowerTech', 'Mavi', 0.2, '2023-08-15', 0.05, true, 4, 'Tasinabilir', true, 'http://example.com/sarjcihazi.jpg'),
(8, 'Bluetooth Hoparlor', 89.00, 80, 'Kulaklik ve hoparlorler', 'Kablosuz baglanti, suya dayanikli', 'SoundTech', 'Siyah', 0.5, '2023-08-16', 0.1, true, 4, 'Standart', true, 'http://example.com/hoparlor'),
(9, 'Gaming Mouse', 69.99, 120, 'Bilgisayar Aksesuarlari', 'DPI ayarlari, RGB aydinlatma','GameMaster', 'Siyah', 0.1, '2023-08-17', 0, true, 5, 'Standard', true,'http://example.com/gaming.jpg'),
(10, 'Kamera', 799.00, 40, 'Kamera ve Fotograf', '20 MP cozunurluk, 4K video cekim', 'PhotoTech', 'Siyah', 0.6, '2023-08-18', 0.12, true, 4, 'Standart', true, 'http://example.com/kamera.jpg');



SELECT * from Urunlerim;

SELECT * from Urunlerim;

--Fiyati 500.000 den yuksek olan urunleri listeleme
SELECT * FROM Urunlerim WHERE fiyat> 500.00;

--Kategorisi "Elektronik" olan ve stok miktari 50'den fazla olan urunlerin adini, fiyatini ve stok miktarini listeleme:
SELECT ad, fiyat, stok_miktari FROM Urunlerim WHERE kategori = 'Elektronik' AND stok_miktari>50;

--Agirlik degeri 0.1 ile 0.5 arasinda olan urunlerin adini, agirlik degerini ve eklenme tarihini listeleme
SELECT ad, agirlik, eklenme_tarihi FROM Urunlerim WHERE agirlik BETWEEN 0.1 AND 0.5;

--Renkleri 'Siyah' olan veya ureticisi 'TechMaster' olan urunlerin tum bilgilerini listeleme:
SELECT * FROM Urunlerim WHERE renk='Siyah' OR uretici= 'TechMaster';

SELECT * from Urunlerim;

-- En yuksek puanli urunleri (skor degeri en yuksek olanlari) listeleme:
SELECT * FROM Urunlerim ORDER BY skor DESC LIMIT 5;

-- "Aksesuarlar" kategorisine ait urunlerin stok miktarini 20 arttirma:
UPDATE Urunlerim
SET stok_miktari = stok_miktari + 20
WHERE kategori= 'Aksesuarlar';

SELECT * FROM Urunlerim;

--'Elektronik' kategorisine ait urunlerin ortalama indirim oranini bulma:
SELECT AVG(indirim_orani)AS ortalama_indirim_orani
FROM Urunlerim
WHERE kategori = 'Elektronik';

-- 'DROP' sildigin zaman geri alamiyorsun DIKKATLI kullanmak gerek

--Silme islemi icin
DELETE FROM Urunlerim WHERE ad='Gaming Mouse';

SELECT * FROM Urunlerim;

--Toplam urun sayisi:
SELECT COUNT(*) AS toplam_urun_sayisi FROM urunlerim;

--'Siyah' renlteki urunlerin sayisi:
SELECT COUNT(*) AS siyah_renk_urun_sayisi 
FROM Urunlerim WHERE renk='Siyah';  

--Stok miktari 50'den fazla olan urunlerin sayisi:
SELECT COUNT(*) AS stok_urun_50den_fazla_urunsayisi 
FROM Urunlerim WHERE stok_miktari>50;
