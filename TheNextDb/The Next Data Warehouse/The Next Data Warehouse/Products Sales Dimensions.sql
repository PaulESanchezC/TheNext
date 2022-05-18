create table Dim_ProductSales
(
	Dim_ProductSalesId int primary key identity(1,1),
	
	--Products
	ProductId uniqueidentifier  ,
	ProductName varchar(50)  ,
	ProductDescription varchar(550)  ,
	ProductCost smallmoney  ,
	
	--Orders
	OrderId uniqueidentifier  ,
	OrderDate date  ,
	OrderStatus smallint  ,
	OrderTotalAmount money ,
	
	--OrderProducts
	OrderProductId uniqueidentifier ,
	OrderProductQuantity tinyint ,
	
	--Customers
	CustomerId uniqueidentifier ,
	CustomerFirstName varchar (50) ,
	CustomerMiddleName varchar (50) null,
	CustomerLastName varchar (50) ,
	CustomerPhoneNumber varchar (20) ,
	CustomerEmail varchar(50) ,
	CustomerStreetAddress varchar(100) ,
	CustomerCity varchar(50) ,
	CustomerProvince varchar(50) ,	
	CustomerDateCreated date ,
	CustomerIsActive bit ,
	
	--Sales
	SaleId uniqueidentifier ,
	SaleDate datetime ,			
);