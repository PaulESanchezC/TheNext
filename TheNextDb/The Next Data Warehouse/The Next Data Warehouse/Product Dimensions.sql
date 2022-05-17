create table Dim_Products
(
	Dim_PrdouctsId int primary key,
	--Products
	ProductId int,
	ProductName varchar(50),
	ProductDescription varchar(50),
	ProductDateCreated date,
	--Facilities
	ProductionFacilityId int,
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
	ProductionCycleId int,
	ProductionCycleName varchar(50),
	ProductionCycleDescription varchar(550),
	ProductionCycleEstimatedTime smalldatetime,
	--Bussiness logic
	DateCreated date default getDate(),
	--Production Costs
	ProductionCostId int,	
	ProductionCost smallmoney,
);