USE CarSaleDatabase
GO

--Tehran Branches
CREATE VIEW [TehranBranches]
AS
    SELECT Branch.*, City.CityName
    FROM Branch INNER JOIN City
        ON Branch.CityID = City.CityID
    WHERE City.CityName = 'Tehran'

SELECT * FROM TehranBranches

-- Cars sold in tehran
ALTER VIEW [TehranSaleCars]
AS
    SELECT V.CarID, V.Model, C.Name as Company, Color.NAME as Color, TOC.Name as [Car Type], V.ProductionYear, V.Miles as Millage, S.Price
    FROM TehranBranches as TB INNER JOIN Sale as S
                                            ON TB.BranchID = S.BranchID
                              INNER JOIN Vehicle as V
                                            ON V.CarID = S.CarID
                              INNER JOIN Company AS C
                                            ON C.CompanyID = V.CompanyID
                              INNER JOIN Color
                                            ON Color.ColorID = V.ColorID
                              INNER JOIN TypeOfCar as TOC
                                            ON TOC.TypeID = V.TypeID
SELECT * FROM TehranSaleCars

--show all sold cars with color, Car Type, Company, branch Name, branch Province Name, branch city name
CREATE VIEW [SoldedCarsAllDetail]
AS
    SELECT V.CarID, V.Model, C.Name as [Company Name], Color.NAME as Color, TOC.Name as [Car Type], V.ProductionYear, V.Fuel, V.Miles, B.BranchName, City.CityName, P.ProvinceName, S.Price
    FROM Sale as S  INNER JOIN Vehicle AS V
                                            ON S.CarID = V.CarID
                    INNER JOIN Company as C
                                            ON C.CompanyID = V.CompanyID
                    INNER JOIN Color        
                                            ON Color.ColorID = V.ColorID
                    INNER JOIN TypeOfCar as TOC   
                                            ON TOC.TypeID = V.TypeID
                    INNER JOIN Branch as B
                                            ON B.BranchID = S.BranchID
                    INNER JOIN City
                                            ON City.CityID = B.CityID
                    INNER JOIN Province as P
                                            ON P.ProvinceID = City.ProvinceID                                                

SELECT * FROM SoldedCarsAllDetail



--show all bought cars with color, Car Type, Company, branch Name, branch Province Name, branch city name
CREATE VIEW [BoughtCarsAllDetail]
AS
    SELECT V.CarID, V.Model, C.Name as [Company Name], Color.NAME as Color, TOC.Name as [Car Type], V.ProductionYear, V.Fuel, V.Miles, Supplier.LastName + ' '+ Supplier.FirstName as Supplier, City.CityName, P.ProvinceName,Buy.Price
    FROM Buy    INNER JOIN Vehicle AS V
                                        ON Buy.CarID = V.CarID
                INNER JOIN Company as C
                                        ON C.CompanyID = V.CompanyID
                INNER JOIN Color
                                        ON Color.ColorID = V.ColorID
                INNER JOIN TypeOfCar as TOC
                                        ON TOC.TypeID = V.TypeID
                INNER JOIN Supplier 
                                        ON Supplier.SupplierID = Buy.SupplierID
                INNER JOIN City
                                        ON City.CityID = Supplier.CityID
                INNER JOIN Province as P
                                        ON P.ProvinceID = City.ProvinceID                                                
SELECT * from Sale

SELECT * FROM BoughtCarsAllDetail

