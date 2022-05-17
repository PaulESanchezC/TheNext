create table Products 
(
	ProductId int primary key,
	ProductName varchar(50) not null,
	ProductDescription varchar(550) not null,

	--Bussiness logic
	DateCreated date default getDate(),
	IsActive bit default 1,		
);

create table ProductionFacilities
(
	ProductionFacilityId int primary key,
	ProductionFacilityName varchar(100) not null unique,	
	ProductionFacilityEmail varchar(50) not null unique,
	ProductionFacilityPhone varchar(50) not null,
	ProductionFacilityCategory tinyint default 10,
	ProductionFacilityStreetAddress varchar(100) not null,
	ProductionFacilityPostalCode varchar(20) not null,
	ProductionFacilityCity varchar(50) not null,
	ProductionFacilityProvince varchar (50) not null,
	
	--Bussiness logic
	DateCreated date default getDate(),
	IsActive bit default 1,	
);

create table ProductionCycles
(
	ProductionCycleId int primary key,
	ProductionCycleName varchar(50) not null,
	ProductionCycleDescription varchar(550) not null,
	ProductionCycleEstimatedTime smallint not null,

	--Bussiness logic
	DateCreated date default getDate(),
	IsActive bit default 1,	
);

create table ProductionCosts
(
	ProductionCostId int primary key,
	ProductId int references Products(ProductId) not null,
	ProductionCycleId int references ProductionCycles(ProductionCycleId) not null,
	
	ProductionCost smallmoney not null,

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