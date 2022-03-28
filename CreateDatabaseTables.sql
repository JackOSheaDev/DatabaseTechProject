use TechShop;
--Drops all tables to reset them.
drop table SellsItem;
drop table stock;
drop table Customer;
drop table Staff;
drop table Supplier;
drop table Devices;


--Creates a table for the Customer with their ID, Name and Phone Number.
create table Customer
(
    --ID which is created by identity function.
    CustomerID int identity(1,1) primary key,
    --Name which can be null.
    CustomerName varchar(25),
    --Phone number which can be null.
    --TODO Get numerical check working.
    CustomerPhone varchar(15),

)

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

--Creates a table for the Supplier who supplies devices and cables to the tech shop.
create table Supplier
(
    --Their supplier ID which is created by the identity function.
    SupplierID int identity(1,1) primary key,
    --Supplier name which cannot be null
    SupplierName VARCHAR(25) not null,
    --Supplier contact no which cannot be null and is checked to be greater than 0.
    SupplierContactNo VARCHAR(15) not null
)
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

--Creates a table for all the devices in stock which is a weak entity between supplier and devices.
create table Stock
(
    --Each stock item has a unique primary key.
    SerialNumber numeric primary key ,
    --Each stock item is provided by a supplier with a unique ID.
    SupplierID int references Supplier,
    --Each stock item is a type of device identified by the ID.
    DeviceID int references Devices,
    --The date the item was brought into the stock system.
    DateSupplied date,

)

--Creates a table for when an item in stock is sold to a customer.
create table SellsItem
(
    --The ID of the staff who sold the item.
    StaffID int references Staff,
    --The ID of the customer who bought the item.
    CustomerID int references Customer,
    --The date the transaction took place.
    DateOfTransaction date,
    --The serial number of the item.
    SerialNumber numeric references Stock,

    --The primary key is composed of the staff, the customerID and the date of transaction.
    primary key(StaffID,CustomerID,DateOfTransaction),

    --If the item is less than 100 the user does not need to give their name and address.
    --Only passes the constraint if the price is less than 100 or they have contact info.
    constraint Check_Details check
        (
            --Checks if the price is less than 100.
            dbo.checkPrice(SerialNumber) = 1
                or
            --Checks if the customer has both their phone number and name in the table.
            (
                dbo.checkPhoneNo(CustomerID) = 1
                and
                dbo.checkName(CustomerID) = 1
            )
        )

)
