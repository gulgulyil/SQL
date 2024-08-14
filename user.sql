CREATE TABLE Kullanicilar (
id INT PRIMARY KEY,
isim VARCHAR(50),
email VARCHAR(100)
);

INSERT INTO Kullanicilar (id, isim, email)
VALUES
(1, 'Ahmet Yilmaz', 'ahmet@example.com'),
(2, 'Ayse Kaya', 'ayse@example.com'),
(3, 'Mehmet Demir', 'mehmet@example.com'),
(4, 'Elif Yildiz', 'elif@example.com'),
(5, 'Ali Gul', 'ali@example.com'),
(6, 'Zeynep Yilmaz', 'zeynep@example.com'),
(7, 'Emre Celik', 'emre@example.com'),
(8, 'Esra Arslan', 'esra@example.com'),
(9, 'Cem Akin', 'cem@example.com'),
(10, 'Selin Yildirim', 'selim@example.com');

SELECT * FROM kullanicilar
