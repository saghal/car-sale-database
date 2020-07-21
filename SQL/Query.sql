--Query 1
--Simple queries

USE CarSaleDatabase
GO

SELECT * FROM Vehicle
SELECT * FROM Company
SELECT * FROM Buy
SELECT * FROM Sale
SELECT * FROM Branch
SELECT * FROM Customer 
SELECT * FROM Supplier



-- Query 2
-- show companies have hybride cars
SELECT DISTINCT Company.Name 
from Vehicle INNER JOIN Company
    ON  Vehicle.CompanyID = Company.CompanyID
WHERE Fuel = 'Hybride'




-- Query 3
-- show Female customers purchase more than 50000
WITH SpecialFemaleCustomer(CustomerID,Price) as(
    SELECT CustomerID, SUM(Price) 
    FROM Sale
    Group By CustomerID
    HAVING  SUM(Price) > 50000
)

SELECT C.* FROM SpecialFemaleCustomer as SFC INNER JOIN Customer as C
    ON SFC.CustomerID = C.CustomerID
WHERE C.Gender = 'Female'
ORDER BY C.LastName




-- Query 4
-- show Male customers purchase more than 60000
WITH SpecialMaleCustomer(CustomerID, Price)as(
        SELECT CustomerID, SUM(Price)
        FROM Sale
        Group By CustomerID
        HAVING  SUM(Price) > 60000
    )

SELECT C.*
FROM SpecialMaleCustomer as SMC INNER JOIN Customer as C
    ON SMC.CustomerID = C.CustomerID
WHERE C.Gender = 'Male'
ORDER BY c.CustomerID




--Query 5
-- show each company sum sales
WITH CarCompany(CarID, CarName, CompanyID, CompanyName) as(
    SELECT V.CarID, V.Model, V.CompanyID, C.Name
    FROM Company as C INNER JOIN Vehicle as V
        ON C.CompanyID = V.CompanyID
),

SoldCompanies(CompanyID,Name,SumSale) AS(
    SELECT CC.CompanyID, CC.CompanyName, SUM(S.Price) 
    FROM CarCompany as CC INNER JOIN Sale as S
        ON S.CarID = CC.CarID
        GROUP BY CC.CompanyName, CC.CompanyID
),

UnSoldCompanies(CompanyID, Name, SumSale) AS(
    SELECT CompanyID, Name, 0.0000 FROM Company
    EXCEPT
    SELECT CompanyID, Name, 0.0000 FROM SoldCompanies
)

SELECT * FROM SoldCompanies
UNION
SELECT * FROM UnSoldCompanies
ORDER BY SumSale desc
