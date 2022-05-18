create procedure InsertProductionDimension 
(
	--Products
	@ProductId uniqueidentifier,
	@ProductName varchar(50),
	@ProductDescription varchar(50),
	@ProductDateCreated date ,
	
	--Facilities
	@ProductionFacilityId uniqueidentifier ,
	@ProductionFacilityName varchar(100) ,
	@ProductionFacilityEmail varchar(50) ,
	@ProductionFacilityPhone varchar(50) ,	
	@ProductionFacilityCategory tinyint ,
	@ProductionFacilityStreetAddress varchar(100) ,
	@ProductionFacilityPostalCode varchar(20) ,
	@ProductionFacilityCity varchar(50) ,
	@ProductionFacilityProvince varchar (50) ,
	@ProductionDateCreated date ,
	
	--ProductionCycles
	@ProductionCycleId uniqueidentifier ,
	@ProductionCycleName varchar(50) ,
	@ProductionCycleDescription varchar(550) ,
	@ProductionCycleEstimatedTime smalldatetime ,
	
	--Bussiness logic
	@DateCreated date ,
	
	--Production Costs
	@ProductionCostId uniqueidentifier ,
	@ProductionCost smallmoney
)
	as begin
		declare @Id int
		insert into Dim_CustomersSales 
		values
		(
			@ProductId, @ProductName, @ProductDescription,@ProductDateCreated, 
			@ProductionFacilityId,@ProductionFacilityName, @ProductionFacilityEmail, @ProductionFacilityPhone, @ProductionFacilityCategory,
			@ProductionFacilityStreetAddress, @ProductionFacilityPostalCode, @ProductionFacilityCity,@ProductionFacilityProvince,
			@ProductionDateCreated,	
			@ProductionCycleId,	@ProductionCycleName, @ProductionCycleDescription,	@ProductionCycleEstimatedTime, @DateCreated, 
			@ProductionCostId, @ProductionCost
		)
		set @Id = scope_identity()

		return @Id
	end 
	go;