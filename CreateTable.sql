Create DATABASE CarSaleDatabase
USE CarSaleDatabase
GO

CREATE TABLE Province(
    ProvinceID int PRIMARY KEY IDENTITY(1000,1),
    ProvinceName VARCHAR(30) NOT NULL,

)
CREATE TABLE City
(
    CityID int PRIMARY KEY IDENTITY(1000,1),
    CityName VARCHAR(30) NOT NULL,
    ProvinceID int NOT NULL,
    FOREIGN KEY (ProvinceID) REFERENCES Province(ProvinceID)

)

CREATE TABLE Branch(
    BranchID int PRIMARY KEY IDENTITY(1000,1),
    BranchName VARCHAR(30) NOT NULL,
    CityID int NOT NULL,
    FOREIGN KEY (CityID) REFERENCES City(CityID)    
)

