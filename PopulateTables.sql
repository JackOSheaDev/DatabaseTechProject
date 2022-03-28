use TechShop

-- These statements are used to insert values into the customers table.
-- Every purchase will have a customer which is specified by their ID.
-- But not all customers will specify their name and number.
-- This is okay if the value is under 100 euro.
insert into Customer(CustomerName,CustomerPhone) values (null,null);
insert into Customer(CustomerName) values ('Robin Williams');
insert into Customer(CustomerName,CustomerPhone) values ('Tim Allen','0867898765');
insert into Customer(CustomerName,CustomerPhone) values ('Charlie Sheen','0867896265');
insert into Customer(CustomerName,CustomerPhone) values ('Hugh Laurie','0857898765');
insert into Customer(CustomerName) values ('Selena Gomez');



-- These statements are used to insert values into the staff table.
insert into Staff(StaffName, StaffAddress) values ('Homer Simpson','742 evergreen terrace');
insert into Staff(StaffName, StaffAddress) values ('Marge Simpson','742 evergreen terrace');
insert into Staff(StaffName, StaffAddress) values ('Bart Simpson','742 evergreen terrace');
insert into Staff(StaffName, StaffAddress) values ('Ned Flanders','744 evergreen terrace');
insert into Staff(StaffName, StaffAddress) values ('Moe Syzlak','Moe''s Tavern');
insert into Staff(StaffName, StaffAddress) values ('Duffman','Duffman''s mansion');



--These statements are used to insert values into the supplier table.
insert into Supplier(SupplierName, SupplierContactNo) values ('Amazon','044000000');
insert into Supplier(SupplierName, SupplierContactNo) values ('New Egg','044000001');
insert into Supplier(SupplierName, SupplierContactNo) values ('Best Buy','044000002');
insert into Supplier(SupplierName, SupplierContactNo) values ('Smyth''s','044000003');
insert into Supplier(SupplierName, SupplierContactNo) values ('Argos','044000004');
insert into Supplier(SupplierName, SupplierContactNo) values ('Curry''s','044000005');
insert into Supplier(SupplierName, SupplierContactNo) values ('CEX','044000006');
insert into Supplier(SupplierName, SupplierContactNo) values ('Harvey Norman','044000007');



--These statements are used to insert values into the device table.
insert into Devices(DeviceType, DeviceBrand, DeviceName, Price, ReleaseYear) values ('Tablet','Apple','Ipad 4th gen',400,'2012-01-01');
insert into Devices(DeviceType,DeviceBrand,DeviceName) values ('Tablet','Apple','Ipad Mini');
insert into Devices(DeviceType,DeviceBrand,DeviceName) values ('Tablet','Microsoft','Surface');

insert into Devices(DeviceType,DeviceBrand,DeviceName) values ('Watch','Apple','Apple Watch');
insert into Devices(DeviceType,DeviceBrand,DeviceName) values ('Watch','Samsung','Samsung Gear');
insert into Devices(DeviceType,DeviceBrand,DeviceName) values ('Watch','Motorola','Motorola 360');

insert into Devices(DeviceType, DeviceBrand, DeviceName, Price, ReleaseYear) values ('Laptop','Apple','Macbook Pro',2000,'2020-05-12');
insert into Devices(DeviceType, DeviceBrand, DeviceName, Price, ReleaseYear) values ('Laptop','Dell','XPS',2100,null);
insert into Devices(DeviceType, DeviceBrand, DeviceName, Price, ReleaseYear) values ('Laptop','Apple','Macbook Air',null,null);

insert into Devices(DeviceType, DeviceBrand, DeviceName, Price, ReleaseYear) values ('Cable','Apple','Lightning Cable',5,'2020-05-12');
insert into Devices(DeviceType, DeviceBrand, DeviceName, Price, ReleaseYear) values ('Cable','Samsung','Type C Cable',5,'2020-05-12');
insert into Devices(DeviceType, DeviceBrand, DeviceName, Price, ReleaseYear) values ('Cable','Google','Type C Cable',5,'2020-05-12');



--Add items in stock.
insert into stock(SerialNumber, SupplierID, DeviceID, DateSupplied) values (10000000,1,1,'2020-01-15');
insert into stock(SerialNumber, SupplierID, DeviceID, DateSupplied) values (10000001,2,4,'2020-01-15');
insert into stock(SerialNumber, SupplierID, DeviceID, DateSupplied) values (10000002,2,7,'2020-01-15');
insert into stock(SerialNumber, SupplierID, DeviceID, DateSupplied) values (10000003,2,10,'2020-01-15');
insert into stock(SerialNumber, SupplierID, DeviceID, DateSupplied) values (10000004,2,8,'2020-01-15');


--Does not work because price is greater than 100
--insert into SellsItem(StaffID, CustomerID, DateOfTransaction, SerialNumber) values (1,1,'2021-02-15',10000004);

--Works because customer entry isnt null
insert into SellsItem(StaffID, CustomerID, DateOfTransaction, SerialNumber) values (1,3,'2021-02-15',10000004);
--Does work because price less than 100
insert into SellsItem(StaffID, CustomerID, DateOfTransaction, SerialNumber) values (1,1,'2021-02-15',10000003);
insert into SellsItem(StaffID, CustomerID, DateOfTransaction, SerialNumber) values (2,4,'2021-02-15',10000001);
insert into SellsItem(StaffID, CustomerID, DateOfTransaction, SerialNumber) values (3,5,'2021-02-15',10000002);


