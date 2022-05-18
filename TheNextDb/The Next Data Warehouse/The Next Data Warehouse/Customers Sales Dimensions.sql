create table Dim_CustomersSales
(
	Dim_CustomersSalesId int primary key identity(1,1),
	
	--Customers
	CustomerId uniqueidentifier not null,
	CustomerFirstName varchar (50) not null,
	CustomerMiddleName varchar (50) null,
	CustomerLastName varchar (50) not null,
	CustomerPhoneNumber varchar (20) not null unique,
	CustomerEmail varchar(50) not null unique,
	CustomerStreetAddress varchar(100) not null,
	CustomerCity varchar(50) not null,
	CustomerProvince varchar(50) not null,	
	CustomerDateCreated date not null,
	CustomerIsActive bit not null,

	--Sales
	SaleId uniqueidentifier not null,
	SaleDate datetime not null,
	
	--Orders
	OrderId uniqueidentifier not null,
	OrderDate date not null,
	OrderStatus smallint not null,
	OrderTotalAmount money not null
);