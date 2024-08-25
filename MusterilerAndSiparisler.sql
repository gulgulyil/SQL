CREATE TABLE Musteriler(
	MusteriID INT PRIMARY KEY,
	Adi VARCHAR(50),
	Soyadi VARCHAR(50),
	Sehir VARCHAR(50)
);

INSERT INTO Musteriler (MusteriID, Adi, Soyadi, Sehir)
VALUES
	(1, 'Ahmet','Yilmaz', 'Ankara'),
	(2, 'Ayse', 'Kara', 'Istanbul'),
	(3, 'Mehmet', 'Demir', 'Izmir');

SELECT * FROM Musteriler;

CREATE TABLE Siparisler(
	SiparisID INT PRIMARY KEY,
	MusteriID INT,
	UrunAdi VARCHAR(50),
	Miktar INT
);

INSERT INTO Siparisler (SiparisID,MusteriID, UrunAdi, Miktar)
VALUES
	(101, 1, 'Laptop', 2),
	(102, 2, 'Telefon', 3),
	(103, 1, 'Tablet', 1);

SELECT * FROM Siparisler;

CREATE TABLE Urunler(
	UrunID INT PRIMARY KEY,
	UrunAdi VARCHAR(50),
	Fiyat DECIMAL (10,2)
);

INSERT INTO Urunler( UrunID ,UrunAdi, Fiyat)
VALUES
	(1, 'Laptop', 2000.00),
	(2, 'Telefon', 1000.00),
	(3, 'Tablet', 500.00);

SELECT Musteriler.Adi, Musteriler.Soyadi, Siparisler.UrunAdi, Siparisler.Miktar
FROM Musteriler
INNER JOIN Siparisler ON Musteriler.MusteriID = Siparisler.MusteriID;

SELECT Musteriler.Adi, Musteriler.Soyadi, Siparisler.UrunAdi, Siparisler.Miktar, Urunler.Fiyat
FROM Musteriler
INNER JOIN Siparisler ON Musteriler.MusteriID = Siparisler.MusteriID
INNER JOIN Urunler ON Siparisler.UrunAdi = Urunler.UrunAdi;
