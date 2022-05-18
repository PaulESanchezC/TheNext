create table Dim_Productions
(
	Dim_PrdouctionsId int primary key identity(1,1),
	
	--Products
	ProductId uniqueidentifier not null,
	ProductName varchar(50) not null,
	ProductDescription varchar(50) not null,
	ProductDateCreated date not null,
	
	--Facilities
	ProductionFacilityId uniqueidentifier not null,
	ProductionFacilityName varchar(100) not null,
	ProductionFacilityEmail varchar(50) not null,
	ProductionFacilityPhone varchar(50) not null,	
	ProductionFacilityCategory tinyint not null,
	ProductionFacilityStreetAddress varchar(100) not null,
	ProductionFacilityPostalCode varchar(20) not null,
	ProductionFacilityCity varchar(50) not null,
	ProductionFacilityProvince varchar (50) not null,
	ProductionDateCreated date not null,
	
	--ProductionCycles
	ProductionCycleId uniqueidentifier not null,
	ProductionCycleName varchar(50) not null,
	ProductionCycleDescription varchar(550) not null,
	ProductionCycleEstimatedTime smalldatetime not null,
	
	--Bussiness logic
	DateCreated date not null,
	
	--Production Costs
	ProductionCostId uniqueidentifier not null,
	ProductionCost smallmoney not null,
);