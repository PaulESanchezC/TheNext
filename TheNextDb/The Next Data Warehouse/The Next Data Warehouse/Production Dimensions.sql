create table Dim_Productions
(
	Dim_PrdouctionsId int primary key identity(1,1),
	
	--Products
	ProductId uniqueidentifier ,
	ProductName varchar(50) ,
	ProductDescription varchar(50) ,
	ProductDateCreated date ,
	
	--Facilities
	ProductionFacilityId uniqueidentifier ,
	ProductionFacilityName varchar(100) ,
	ProductionFacilityEmail varchar(50) ,
	ProductionFacilityPhone varchar(50) ,	
	ProductionFacilityCategory tinyint ,
	ProductionFacilityStreetAddress varchar(100) ,
	ProductionFacilityPostalCode varchar(20) ,
	ProductionFacilityCity varchar(50) ,
	ProductionFacilityProvince varchar (50) ,
	ProductionDateCreated date ,
	
	--ProductionCycles
	ProductionCycleId uniqueidentifier ,
	ProductionCycleName varchar(50) ,
	ProductionCycleDescription varchar(550) ,
	ProductionCycleEstimatedTime smalldatetime ,
	
	--Bussiness logic
	DateCreated date ,
	
	--Production Costs
	ProductionCostId uniqueidentifier ,
	ProductionCost smallmoney ,
);

