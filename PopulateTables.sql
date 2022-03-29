use TechShop

--These statements are used to insert values into the customer table.
insert into Customer(CustomerName,CustomerPhone) values ('Robin Williams','0867898745');
insert into Customer(CustomerName,CustomerPhone) values ('Tim Allen','0867898765');
insert into Customer(CustomerName,CustomerPhone) values ('Charlie Sheen','0867896265');
insert into Customer(CustomerName,CustomerPhone) values ('Hugh Laurie','0857898765');
insert into Customer(CustomerName,CustomerPhone) values ('Selena Gomez','0897898765');



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



--Add items in stock, which are not sold.
insert into stock(SerialNumber, SupplierID, DeviceID, DateSupplied) values (10000000,1,1,'2020-01-15');
insert into stock(SerialNumber, SupplierID, DeviceID, DateSupplied) values (10000001,2,4,'2020-01-15');
insert into stock(SerialNumber, SupplierID, DeviceID, DateSupplied) values (10000002,2,7,'2020-01-15');
insert into stock(SerialNumber, SupplierID, DeviceID, DateSupplied) values (10000003,2,10,'2020-01-15');
insert into stock(SerialNumber, SupplierID, DeviceID, DateSupplied) values (10000004,2,8,'2020-01-15');
insert into stock(SerialNumber, SupplierID, DeviceID, DateSupplied) values (10000005,3,6,'2020-01-15');
insert into stock(SerialNumber, SupplierID, DeviceID, DateSupplied) values (10000006,5,4,'2020-01-15');
insert into stock(SerialNumber, SupplierID, DeviceID, DateSupplied) values (10000007,5,12,'2020-01-15');


--Add items to stock which are sold
insert into stock values (10000008,1,8,'2020-01-15',1,1,GETDATE());
insert into stock values (10000009,6,8,'2020-01-15',1,2,GETDATE());
insert into stock values (10000010,8,8,'2020-01-15',1,4,GETDATE());
insert into stock values (10000013,4,6,'2020-01-15',3,2,GETDATE());
insert into stock values (10000014,2,4,'2020-01-15',3,1,GETDATE());
insert into stock values (10000015,2,12,'2020-01-15',3,3,GETDATE());
insert into stock values (10000011,4,10,'2020-01-15',4,1,GETDATE());
insert into stock values (10000012,4,8,'2020-01-15',4,3,GETDATE());

