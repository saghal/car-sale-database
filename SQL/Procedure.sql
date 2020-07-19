-- each city branches
CREATE PROCEDURE CityBranches @city VARCHAR(30)
AS
SELECT Branch.*, CityName FROM City INNER JOIN Branch
                            ON City.CityID = Branch.CityID
WHERE CityName = @city

EXECUTE CityBranches @city = 'Tehran'


-- sum price solded each province
CREATE PROCEDURE CityAndBranchSumSale
as
select SS.*,
    SUM(SS.[branch sum]) OVER(PARTITION by SS.CityName) as [City sum]
from(
    select Branch.BranchID as BranchID , Branch.BranchName , CityName, sum(Price) as [branch sum]
        from Branch left JOIN Sale
                            on Sale.BranchID = Branch.BranchID
                    INNER JOIN City
                            ON City.CityID = Branch.CityID
    GROUP BY Branch.BranchID ,Branch.BranchName,CityName)  as SS
ORDER BY SS.[branch sum]

EXECUTE CityAndBranchSumSale


-- each model and company sale
CREATE PROCEDURE CompanyModelSale
AS
SELECT SS.*,
SUM(SS.[Sum Model]) OVER(PARTITION by SS.Name) as [Company sum]
from(SELECT  Vehicle.Model, Company.Name, isnull(SUM(Price),0) AS [Sum Model]
FROM Vehicle left JOIN Sale
                                ON Vehicle.CarID = Sale.CarID
                        INNER JOIN Company
                                ON Vehicle.CompanyID = Company.CompanyID
GROUP BY Vehicle.Model, Company.Name) as SS