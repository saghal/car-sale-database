-- update modify date for customers
CREATE TRIGGER UpdateCustomerInfo
ON Customer
AFTER UPDATE
AS
UPDATE Customer
SET ChangeDate = GETDATE()
WHERE CustomerID IN (select CustomerID FROM deleted)




-- update modify date for Suppliers
CREATE TRIGGER UpdateSupplierModifiedInfoDat
ON Supplier
AFTER UPDATE
AS
UPDATE Supplier
SET ChangeDate = GETDATE()
WHERE SupplierID in (select SupplierID FROM deleted)



-- tax to  cars 
CREATE TRIGGER TaxtoCars
ON Sale
AFTER INSERT
AS
UPDATE Sale
SET Price = Price * 1.09
WHERE CarID in (select carID FROM inserted)


