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

	--Bussiness logic
	DateCreated date default getDate(),
	IsActive bit default 1,
);
