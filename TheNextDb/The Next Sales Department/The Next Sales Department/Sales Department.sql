create table Orders
(
	OrderId int primary key,
	OrderDate date default getDate(),
	OrderStatus smallint default 0,
	OrderTotalAmount money not null
);

create table OrdersPayments
(
	OrderPaymentId int primary key,
	OrderPaymentDate datetime default getDate(),
	OrderPaymentAmount smallmoney not null,
	OrderId int references Orders (OrderId) not null,
	OrderPaymentComment varchar(100) null
);

create table Customers
(
	CustomerId int primary key
);

create table Sales
(
	SaleId int primary key,
	SaleDate datetime default getDate(),	
	OrderId int references Orders (OrderId) not null,
	CustomerId int references Customers(CustomerId) not null
);

create table Products 
(
	ProductId int primary key,
	ProductName varchar(50) not null,
	ProductDescription varchar(550) not null,
	ProductCost smallmoney not null,

	--Bussiness logic
	DateCreated date default getDate(),
	IsActive bit default 1,		
);

create table OrderProducts
(
	OrderProductId int primary key,
	OrderId int references Orders(OrderId) not null,
	ProductId int references Products(ProductId) not null
)