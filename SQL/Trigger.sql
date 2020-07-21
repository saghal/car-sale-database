-- update modify date for customers
CREATE TRIGGER UpdateCustomerInfo
ON Customer
AFTER UPDATE
AS
UPDATE Customer
SET ChangeDate = GETDATE()
WHERE CustomerID IN (select CustomerID FROM inserted)

CREATE TRIGGER UpdatePhoneCustomerInfo
ON CustomerPhoneNumber
AFTER UPDATE,INSERT
AS
UPDATE Customer
SET ChangeDate = GETDATE()
WHERE NationalCode IN (select NationalCode
FROM inserted)




-- update modify date for Suppliers
CREATE TRIGGER UpdateSupplierModifiedInfoDat
ON Supplier
AFTER UPDATE
AS
UPDATE Supplier
SET ChangeDate = GETDATE()
WHERE SupplierID in (select SupplierID FROM inserted)



CREATE TRIGGER UpdatePhoneSupplierModifiedInfoDat
ON SupplierPhoneNumber
AFTER UPDATE, INSERT
AS
UPDATE Supplier
SET ChangeDate = GETDATE()
WHERE NationalCode in (select NationalCode
FROM inserted)







-- tax to  cars 
CREATE TRIGGER TaxtoCars
ON Sale
AFTER INSERT
AS
UPDATE Sale
SET Price = Price * 1.09
WHERE CarID in (select carID FROM inserted)


