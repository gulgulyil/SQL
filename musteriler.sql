CREATE TABLE musteriler1(
musteri_id INT PRIMARY KEY,
adi VARCHAR(50),
soyadi VARCHAR(50),
telefon VARCHAR(50),
eposta VARCHAR(100),
adres VARCHAR(255),
dogum_tarihi DATE,
uye_olma_tarihi TIMESTAMP,
aktif BOOLEAN,
cinsiyet CHAR(1),
yas INT
);

INSERT INTO musteriler1 (musteri_id, adi, soyadi, telefon, eposta, adres, dogum_tarihi, uye_olma_tarihi, aktif, cinsiyet, yas)
VALUES
(8, 'Ayse', 'Kaya', '555444333', 'ayse@example.com', 'Istanbul, Turkiye', '1990-05-05', datetime('NOW'), TRUE, 'K', 34),
(9, 'Mehmet', 'Yilmaz', '555444334', 'mehmet@example.com', 'Ankara, Turkiye', '1985-10-22', datetime('NOW'), TRUE, 'E', 39),
(10, 'Zeynep', 'Demir', '555444335', 'zeynep@example.com', 'Izmir, Turkiye', '1998-07-03', datetime('NOW'), TRUE, 'K', 36),
(11, 'Ahmet', 'Aydin', '555444336', 'ahmet@example.com', 'Bursa, Turkiye', '1992-12-18', datetime('NOW'), TRUE, 'E', 32),
(12, 'Esra', 'Koc', '555444337', 'esra@example.com', 'Antalya, Turkiye', '1982-10-22', datetime('NOW'), TRUE, 'E', 42),
(13, 'Mustafa', 'Kurt', '555444338', 'mustafa@example.com', 'Adana, Turkiye', '1996-06-10', datetime('NOW'), TRUE, 'E', 27),
(14, 'Fatma', 'Sahin', '555444339', 'fatma@example.com', 'Eskisehir, Turkiye', '1994-09-07', datetime('NOW'), TRUE, 'K', 30),
(15, 'Ali', 'Demir', '555444340', 'ali@example.com', 'Kayseri, Turkiye', '1991-04-28', datetime('NOW'), TRUE, 'E', 33),
(16, 'Ayhan', 'Aksoy', '555444345', 'ayhan@example.com', 'Denizli, Turkiye', '19887-11-15', datetime('NOW'), TRUE, 'E',37),
(17, 'Gul', 'Akyuz', '555444346', 'gul@example.com', 'Bursa, Turkiye', '1993-08-20', datetime('NOW'), TRUE, 'K', 31);

SELECT * FROM musteriler1;
