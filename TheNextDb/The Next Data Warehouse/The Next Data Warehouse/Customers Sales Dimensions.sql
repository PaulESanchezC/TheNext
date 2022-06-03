create table Dim_CustomersSales
(
	Dim_CustomersSalesId int primary key identity(1,1),
	
	--Customers
	CustomerId uniqueidentifier ,
	CustomerFirstName varchar (50) ,
	CustomerMiddleName varchar (50) null,
	CustomerLastName varchar (50) ,
	CustomerPhoneNumber varchar (20)  unique,
	CustomerEmail varchar(50)  unique,
	CustomerStreetAddress varchar(100) ,
	CustomerCity varchar(50) ,
	CustomerProvince varchar(50) ,	
	CustomerDateCreated date ,
	CustomerIsActive bit ,

	--Sales
	SaleId uniqueidentifier ,
	SaleDate datetime ,
	
	--Orders
	OrderId uniqueidentifier ,
	OrderDate date ,
	OrderStatus smallint ,
	OrderTotalAmount money 
);