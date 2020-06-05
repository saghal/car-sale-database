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
    ChangeDate DATETIME, -- any time if we want change information like Address or phonNumber update this field
    PRIMARY KEY(CustomerID,NationalCode)
)

CREATE TABLE Supplier(
    SupplierID INT IDENTITY (1000,1) UNIQUE NOT NULL,
    NationalCode INT UNIQUE NOT NULL,
    FirstName VARCHAR(30) NOT NULL,
    LastName VARCHAR(30) NOT NULL,
    PhoneNumber VARCHAR(11) NOT NULL,
    Gender VARCHAR(6) NOT NULL CHECK(Gender in('Male','Female')),
    CityID int NOT NULL,
    Address VARCHAR(100),
    BirthDate DATE,
    Email VARCHAR(50),
    ChangeDate DATETIME, -- any time if we want change information like Address or phonNumber update this field
    FOREIGN KEY(CityID) REFERENCES City(CityID),    
    PRIMARY KEY(SupplierID,NationalCode)
)


CREATE TABLE Company(
    CompanyID INT IDENTITY (1000,1) PRIMARY KEY,
    Name VARCHAR(30) NOT NULL,
    Country VARCHAR(30) NOT NULL
)

CREATE TABLE TypeOfCar(
    TypeID INT IDENTITY (1000,1) PRIMARY KEY,
    Name VARCHAR(25) NOT NULL,
)

CREATE TABLE Color(
    ColorID INT IDENTITY(1000,1) PRIMARY KEY,
    NAME VARCHAR(25) NOT NULL
)

CREATE TABLE Vehicle(
    CarID INT IDENTITY(1000,1) UNIQUE NOT NULL,
    EngineNumber VARCHAR(11) UNIQUE NOT NULL,
    CompanyID INT NOT NULL,
    Model VARCHAR(30) NOT NULL,
    ColorID INT NOT NULL,
    Miles int DEFAULT 0,
    TypeID INT NOT NULL,
    ProductionYear INT NOT NULL,
    Fuel VARCHAR(10) CHECK(Fuel in ('Gasoline','Hybride','CNG')),
    Price money NOT NULL,
    Description VARCHAR(100),
    FOREIGN KEY(TypeID) REFERENCES TypeOfCar(TypeID),    
    FOREIGN KEY(CompanyID) REFERENCES Company(CompanyID),    
    FOREIGN KEY(ColorID) REFERENCES Color(ColorID),    
    PRIMARY KEY(CarID,EngineNumber)
)

SELECT * FROM Vehicle