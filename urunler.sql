CREATE TABLE urunler(
urun_id INT PRIMARY KEY,
urun_ad VARCHAR(100),
stok_miktari INT,
fiyat DECIMAL(10,2)
)

INSERT INTO urunler(urun_id, urun_ad, stok_miktari, fiyat)
VALUES
(101, 'Laptop', 50, 3599.99),
(102, 'Telefon', 100, 1999.50),
(103, 'Tablet', 25, 799.75),
(104, 'Kulaklik', 200, 149.90),
(105, 'Oyun Konsolu', 35, 2799.00);

SELECT * FROM urunler;
