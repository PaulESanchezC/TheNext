create table Products 
(
	ProductId uniqueidentifier primary key default newsequentialid(),
	ProductName varchar(50) not null,
	ProductDescription varchar(550) not null,

	--Bussiness logic
	DateCreated date default getDate(),
	IsActive bit default 1,		
);

create table ProductionFacilities
(
	ProductionFacilityId uniqueidentifier primary key default newsequentialid(),
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
	ProductionCycleId uniqueidentifier primary key default newsequentialid(),
	ProductionCycleName varchar(50) not null,
	ProductionCycleDescription varchar(550) not null,
	ProductionCycleEstimatedTime smallint not null,

	--Bussiness logic
	DateCreated date default getDate(),
	IsActive bit default 1,	
);

create table ProductionCosts
(
	ProductionCostId uniqueidentifier primary key default newsequentialid(),
	ProductId uniqueidentifier references Products(ProductId) not null,
	ProductionCycleId uniqueidentifier references ProductionCycles(ProductionCycleId) not null,
	
	ProductionCost smallmoney not null,

	--Bussiness logic
	DateCreated date default getDate(),
	IsActive bit default 1,	
);

create table Production_FacilitiesCosts
(
	Production_FacilitiesCosts uniqueidentifier primary key default newsequentialid(),
	ProductionFacilityId uniqueidentifier references ProductionFacilities(ProductionFacilityId),
	ProductionCostId uniqueidentifier references ProductionCosts (ProductionCostId), 	
);