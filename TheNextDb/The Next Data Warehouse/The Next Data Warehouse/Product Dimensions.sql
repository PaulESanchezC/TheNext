create table Dim_Products
(
	Dim_PrdouctsId int primary key,
	--Products
	ProductId uniqueidentifier,
	ProductName varchar(50),
	ProductDescription varchar(50),
	ProductDateCreated date,
	--Facilities
	ProductionFacilityId uniqueidentifier,
	ProductionFacilityName varchar(100),	
	ProductionFacilityEmail varchar(50) unique,
	ProductionFacilityPhone varchar(50),	
	ProductionFacilityCategory tinyint,
	ProductionFacilityStreetAddress varchar(100),
	ProductionFacilityPostalCode varchar(20),
	ProductionFacilityCity varchar(50),
	ProductionFacilityProvince varchar (50),
	ProductionDateCreated date default getDate(),
	--ProductionCycles
	ProductionCycleId uniqueidentifier,
	ProductionCycleName varchar(50),
	ProductionCycleDescription varchar(550),
	ProductionCycleEstimatedTime smalldatetime,
	--Bussiness logic
	DateCreated date default getDate(),
	--Production Costs
	ProductionCostId uniqueidentifier,	
	ProductionCost smallmoney,
);