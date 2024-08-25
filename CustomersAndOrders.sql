CREATE TABLE Customers(
	CustomerID INT PRIMARY KEY,
	FirstName VARCHAR(50),
	Lastname VARCHAR(50)
);

SELECT * FROM Customers;

CREATE TABLE Orders (
	OrderID INT PRIMARY KEY,
	CustomerID INT,
	MovieID INT,
	OrderDate DATE,
	FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

CREATE TABLE Movies (
	MovieID INT PRIMARY KEY,
	Title VARCHAR(100),
	ReleaseYear INT
);

--Customers Tablosuna Veri Ekleme
INSERT INTO Customers(CustomerID, FirstName, Lastname)
VALUES
	(1, 'John', 'Doe'),
	(2, 'Jane', 'Smith'),
	(3, 'Michael', 'Johnson');

--Movies Tablosuna Veri Ekleme
INSERT INTO Movies (MovieID, Title, ReleaseYear)
	VALUES
	(1, 'Movie A', 2020),
	(2, 'Movie B', 2021),
	(3, 'Movie C', 2019);

	SELECT * FROM Movies;

--Orders Tablosuna Veri Ekleme
INSERT INTO Orders (OrderID, CustomerID, MovieID, OrderDate)
VALUES
	(1, 1, 1, '2023-08-01'),
	(2, 2, 3, '2023-08-05'),
	(3, 1, 2, '2023-08-10');

SELECT * FROM Orders;

-- Belirli bir musterinin adini ve soyadini listeleme:
SELECT FirstName, Lastname From Customers Where CustomerID=1;

--Siparisler tablosundaki tum siparislerin tarihlerini listeleme:
SELECT OrderDate From Orders;

--Belirli bir tarih araligindaki siparisleri listeleme:
SELECT OrderID, OrderDate FROM Orders WHERE OrderDate Between '2023-08-01' And '2023-08-10'; 

--INNER JOIN kullanarak tablolari birlestirme:

SELECT Customers.FirstName, Customers.LastName, Movies.Title, Orders.OrderDate
FROM Customers
	INNER JOIN Orders ON Customers.CustomerID = Orders.CustomerID
	INNER JOIN Movies ON Orders.MovieID = Movies.MovieID;
