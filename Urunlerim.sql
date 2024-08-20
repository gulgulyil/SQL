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
