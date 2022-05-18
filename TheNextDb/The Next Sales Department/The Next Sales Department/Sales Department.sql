create table Orders
(
	OrderId uniqueidentifier primary key default newsequentialid(),
	OrderDate date default getDate(),
	OrderStatus smallint default 0,
	OrderTotalAmount money not null
);

create table OrdersPayments
(
	OrderPaymentId uniqueidentifier primary key default newsequentialid(),
	OrderPaymentDate datetime default getDate(),
	OrderPaymentAmount smallmoney not null,
	OrderId uniqueidentifier references Orders (OrderId) not null,
	OrderPaymentComment varchar(100) null
);

create table Customers
(
	CustomerId uniqueidentifier primary key default newsequentialid(),	
	CustomerFirstName varchar (50) not null,
	CustomerMiddleName varchar (50) null,
	CustomerLastName varchar (50) not null,
	CustomerPhoneNumber varchar (20) not null unique,
	CustomerEmail varchar(50) not null unique,
	CustomerStreetAddress varchar(100) not null,
	CustomerCity varchar(50) not null,
	CustomerProvince varchar(50) not null,
);

create table Sales
(
	SaleId uniqueidentifier primary key default newsequentialid(),
	SaleDate datetime default getDate(),	
	OrderId uniqueidentifier references Orders (OrderId) not null,
	CustomerId uniqueidentifier references Customers(CustomerId) not null
);

create table Products 
(
	ProductId uniqueidentifier primary key default newsequentialid(),
	ProductName varchar(50) not null,
	ProductDescription varchar(550) not null,
	ProductCost smallmoney not null,

	--Bussiness logic
	DateCreated date default getDate(),
	IsActive bit default 1,		
);

create table OrderProducts
(
	OrderProductId uniqueidentifier primary key default newsequentialid(),
	OrderId uniqueidentifier references Orders(OrderId) not null,
	ProductId uniqueidentifier references Products(ProductId) not null,
	OrderProductQuantity tinyint not null
);