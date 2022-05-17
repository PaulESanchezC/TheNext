create table Products 
(
	ProductId int primary key,
	ProductName varchar(50),
	ProductDescription varchar(550),	

	--Bussiness logic
	DateCreated date default getDate(),
	IsActive bit default 1,		
);

create table ProductionFacilities
(
	ProductionFacilityId int primary key,
	ProductionFacilityName varchar(100),	
	ProductionFacilityEmail varchar(50) unique,
	ProductionFacilityPhone varchar(50),	
	ProductionFacilityCategory tinyint,
	ProductionFacilityStreetAddress varchar(100),
	ProductionFacilityPostalCode varchar(20),
	ProductionFacilityCity varchar(50),
	ProductionFacilityProvince varchar (50),
	
	--Bussiness logic
	DateCreated date default getDate(),
	IsActive bit default 1,	
);

create table ProductionCycles
(
	ProductionCycleId int primary key,
	ProductionCycleName varchar(50),
	ProductionCycleDescription varchar(550),
	ProductionCycleEstimatedTime smalldatetime,

	--Bussiness logic
	DateCreated date default getDate(),
	IsActive bit default 1,	
);

create table ProductionCosts
(
	ProductionCostId int primary key,
	ProductId int references Products(ProductId),
	ProductionCycleId int references ProductionCycles(ProductionCycleId),
	
	ProductionCost smallmoney default 0.00,

	--Bussiness logic
	DateCreated date default getDate(),
	IsActive bit default 1,	
);

create table Production_FacilitiesCosts
(
	Production_FacilitiesCosts int primary key,
	ProductionFacilityId int references ProductionFacilities(ProductionFacilityId),
	ProductionCostId int references ProductionCosts (ProductionCostId), 	
);