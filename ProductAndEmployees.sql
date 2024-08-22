--Calisan (Employee) tablosu

CREATE TABLE Employees(
EmployeeID INT PRIMARY KEY,
FullName VARCHAR(50),
Age INT,
City VARCHAR(50),
Salary DECIMAL(10,2),
Department VARCHAR(50),
EmployeeJoinKey INT
)

--Urun(Product) tablosu
CREATE TABLE Products(
ProductJoinKey INT PRIMARY KEY,
ProductName VARCHAR(50),
Category VARCHAR(50),
Price DECIMAL(10,2),
StockQuantity INT,
Supplier VARCHAR(50),
ProductDescription TEXT
);

SELECT * FROM Employees;
SELECT * FROM Products;

--Calisanlar tablosuna verileri ekleme
INSERT INTO Employees (EmployeeID, FullName, Age, City, Salary, Department, EmployeeJoinKey)
VALUES
(1, 'Ahmet Yilmaz', 28, 'New York', 60000.00, 'IK', 101),
(2, 'Ayse Kaya', 35, 'Los Angeles', 75000.00, 'Finans', 102),
(3, 'Mehmet Sahin', 40, 'Chicago', 80000.00, 'IT', 103),
(4, 'Zeynep Yilmaz', 32, 'Houston', 65000.00, 'Pazarlama', 104),
(5, 'Can Demir', 28, 'San Francisco', 70000.00, 'Satis', 105),
(6, 'Elif Cinar', 29, 'Miami', 62000.00, 'IK', 106),
(7, 'Ahmet Yildirim', 37, 'Boston', 85000.00, 'IT', 107);

SELECT * FROM Employees;

--Urunler tablosuna veriler ekleme
INSERT INTO Products (ProductJoinKey, ProductName, Category, Price, StockQuantity, Supplier, ProductDescription)
VALUES
(101, 'Laptop', 'Elektronik', 1200.00, 50, 'TechCorp', 'Profesyoneller icin guclu bir laptop'),
(102, 'Ofis Koltugu', 'Mobilya', 250.00, 20, 'HomeGoods', 'Ofis kullanimi icin ergonomik koltuk'),
(103, 'Akilli Telefon', 'Elektronik', 800.00, 100, 'GadgetWorld', 'Gelismis ozelliklere sahip en yeni model akilli telefon'),
(104, 'Kahve Makinesi', 'Ev Aletleri', 80.00, 30, 'KitchenEssentials', 'Hizli ve lezzetli kahve demler'),
(105, 'Kosu Ayakkabisi', 'Spor', 120.00, 40, 'SportZone', 'Kosu tutkunlari icin rahat ayakkabilar'),
(106, 'Yazici', 'Elektronik', 300.00, 15, 'TechCorp', 'Ofis kullanimmi icin yuksek kaliteli renk yazici'),
(107, 'Kanepe', 'Mobilya', 800.00, 10, 'HomeFurnishings', 'Salon icin sik kanepe');

SELECT * FROM Products;

--Belirli bir yasin ustundeki calisanlari secelim
SELECT * FROM Employees
WHERE Age>30;

--Maasa gore sirali olarak calisanlari secelim.
SELECT * FROM Employees
ORDER BY Salary DESC;

--Departmanlara gore gruplayarak maas ortalamalarini bulalimm.
SELECT Department, AVG(Salary) AS AVGSalary
FROM Employees
GROUP BY Department;


--Ilk 5 urunu secelim.
SELECT * FROM Products
LIMIT 5;

--Calisan sayisini belirleyelim
SELECT COUNT(*) AS EmployeeCount
From Employees;

--Ortalama maasi bulalim.
SELECT AVG (Salary) AS MaasOrtalamasi
FROM Employees;

--Toplam stok miktarini bulalim.
SELECT SUM(StockQuantity) AS ToplamStok
FROM Products;

--En dusuk maas
SELECT MIN(Salary) AS En_dusuk_maas
FROM Employees;

--En yuksek fiyatli urunu bulalim.
SELECT MAX(Price) AS EnYuksekMaas
FROM Products;

--Belirli bir araliktaki yas araligindaki calisanlari secelim.
SELECT * FROM Employees
WHERE Age BETWEEN 25 AND 35;

--Belirli bir kelime ile baslayan calisan adlarini secelim.
SELECT * FROM Employees
WHERE FullName LIKE 'A%';
--LIKE operatoru, bir sutunda belirli bir metin desenine uyan verileri secmek icin kullanilir. Bu operator, genellikle WHERE ifadesi icinde kullanilir.


--Belirli departmanlara sahip calisanlari secelim
SELECT * FROM Employees
WHERE Department IN ('IT', 'Pazarlama');

--Urun aciklamasi belirtilmemis urunleri secelim
SELECT * FROM Products
WHERE ProductDescription IS NULL;

--Urun aciklamasi belirtilmis urunleri secelim
SELECT * FROM Products
WHERE ProductDescription IS NOT NULL;

--Benzersiz depertman isimlerini secelim 
SELECT DISTINCT Department,
FROM Employees;

--Calisanlar ve urunler tablolarini birlestirerek bilgileri secelim
SELECT Employees.FullName, Products.ProductName
FROM Employees
INNER JOIN Products ON Employees.EmployeeJoinKey = Products.ProductJoinKey;


--Calisan maaslarini artiralim
UPDATE Employees
SET Salary = Salary*1.1
WHERE Age>30;

SELECT * FROM Employees;

--Belirli depertmana ait calisanlari silelim.
DELETE FROM Employees
WHERE department= 'HR';

--yeni bir urun ekleyelim
INSERT INTO Products(ProductName, Category, Price, StockQuantity, Supplier)
VALUES
('Smartphone', 'Elektronik', 599.99,100,'TechCorp');

SELECT * FROM Products;



--En yiksek fiyatli urunu bulalim.
SELECT MAX(Price) AS EnYuksekMaas
FROM Products;
