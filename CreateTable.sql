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

CREATE TABLE Customer(
    CustomerID int IDENTITY(1000,1) UNIQUE NOT NULL,
    NationalCode int UNIQUE NOT NULL,
    FirstName VARCHAR(30) NOT NULL,
    LastName VARCHAR(30) NOT NULL,
    PhoneNumber VARCHAR(11) NOT NULL,
    Gender VARCHAR(6) NOT NULL CHECK(Gender in('Male','Female')),
    Address VARCHAR(100),
    BirthDate Date,
    Email VARCHAR(50),
    ChangeDate DATETIME, -- any time if we want change information like Address or phonNumber
    PRIMARY KEY(CustomerID,NationalCode)
)
