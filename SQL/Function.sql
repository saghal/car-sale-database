USE CarSaleDatabase
GO 

--by input CarID you can see all detail of car
Create FUNCTION CarDetail(@VehicleID int)
RETURNS TABLE
AS
RETURN
SELECT *
FROM Vehicle
WHERE Vehicle.CarID = @VehicleID

select * FROM [dbo].[CarDetail](1003)



--by input ColorID you can see all cars with that ColorID
Create FUNCTION CarColorType(@ColorID int)
RETURNS TABLE
AS
RETURN
SELECT *
FROM Vehicle
WHERE Vehicle.ColorID = @ColorID

select * FROM [dbo].[CarColorType](1007)


--show cars millage more than @Millage
CREATE FUNCTION CarMillage(@Millage int)
RETURNS TABLE
AS
RETURN
SELECT *
FROM Vehicle
WHERE Vehicle.Miles > @Millage

select * FROM [dbo].[CarMillage](1000)


-- input country name, this function show from this country we bought any thing or not
ALTER FUNCTION CountryCars(@CountryName VARCHAR(20))
    RETURNS VARCHAR(30)
    BEGIN
        DECLARE @Status VARCHAR(30);
        IF(@CountryName in (select Company.Country 
                                    from Buy inner join Vehicle
                                                                ON Buy.CarID = Vehicle.CarID
                                             inner join Company 
                                                                ON Company.CompanyID = Vehicle.CompanyID))
            SET @Status = 'We bought from '
        
        else set @Status = 'We do not bought from '
        RETURN @Status
    END


select  [dbo].[CountryCars]('Iran') 
