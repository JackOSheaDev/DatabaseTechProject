use TechShop;
--DROPS ALL TABLES:
---------------------------------
--Stock table inherits from supplier and devices so must be dropped first
drop table stock;
drop table Customer;
drop table Staff;
drop table Supplier;
drop table Devices;

--CREATE CUSTOMER:
---------------------------------
--Creates a table for the Customer with their ID, Name and Phone Number.
create table Customer
(
    --ID which is created by identity function.
    CustomerID int identity(1,1) primary key,
    --Name which cannot be null.
    CustomerName varchar(25) not null,
    --Phone number which cannot be null.
    CustomerPhone varchar(15) not null check(ISNUMERIC(CustomerPhone)=1),
)


--CREATE STAFF:
---------------------------------
--Creates a table for the Staff members with their ID, their name and address for billing.
create table Staff
(
    --ID which is created by identity function.
    StaffID int identity(1,1) primary key,
    --Name which cannot be null.
    StaffName varchar(40) not null,
    --Address cannot be null.
    StaffAddress varchar(40) not null,
)

--CREATE SUPPLIER:
---------------------------------
--Creates a table for the Supplier who supplies devices and cables to the tech shop.
create table Supplier
(
    --Their supplier ID which is created by the identity function.
    SupplierID int identity(1,1) primary key,
    --Supplier name which cannot be null
    SupplierName VARCHAR(25) not null,
    --Supplier contact no which cannot be null and is checked to be greater than 0.
    SupplierContactNo VARCHAR(15) not null check(ISNUMERIC(SupplierContactNo) = 1)
)

--CREATE DEVICE TABLE:
----------------------------------
--Creates a table for the devices which are used by the tech shop.
create table Devices
(
    --A numerical identity used for each device.
    DeviceID int identity(1,1)primary key,
    --The type of device.
    DeviceType varchar(25) not null,
    --The brand of the device.
    DeviceBrand varchar(25) not null,
    --The name of the device.
    DeviceName varchar(25) not null,
    --The price of the device which is checked to be a positive int.
    Price smallmoney check(Price > 0), --TODO Changed to can be null
    --The year the product released.
    ReleaseYear date, --TODO Changed to can be null
)

--CREATE TABLE STOCK
----------------------------------
--Creates a table for all the devices in stock which is a weak entity between supplier and devices.
create table Stock
(
    --Each stock item has a unique primary key.
    SerialNumber numeric primary key ,
    --Each stock item is provided by a supplier with a unique ID.
    SupplierID int references Supplier not null,
    --Each stock item is a type of device identified by the ID.
    DeviceID int references Devices not null,
    --The date the item was brought into the stock system.
    DateSupplied date not null,

    --Selling Data:
    ---------------------------
    --The ID of the staff who sold the item.
    StaffID int references Staff,
    --The ID of the customer who bought the item.
    CustomerID int references Customer,
    --The date the transaction took place.
    DateOfTransaction date ,


)

