create table Orders
(
	OrderId int primary key,
	OrderDate date default getDate(),
	OrderStatus smallint default 0,
	OrderTotalAmount money
);

create table OrdersPayments
(
	OrderPaymentId int primary key,
	OrderPaymentDate datetime default getDate(),
	OrderPaymentAmount smallmoney,
	OrderId int references Orders (OrderId),
	OrderPaymentComment varchar(100)
);

create table Sales
(
	SaleId int primary key,
	SaleDate datetime default getDate(),	
	OrderId int references Orders (OrderId)
);

create table Products 
(
	ProductId int primary key,
	ProductName varchar(50),
	ProductDescription varchar(550),	
	ProductCost smallmoney,

	--Bussiness logic
	DateCreated date default getDate(),
	IsActive bit default 1,		
);

create table OrderProducts
(
	OrderProductId int primary key,
	OrderId int references Orders(OrderId),	
	ProductId int references Products(ProductId)	
)