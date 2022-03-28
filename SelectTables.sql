use TechShop
select CustomerID as "Customer ID", CustomerName as "Customer Name", CustomerPhone as "Phone Number" from Customer;
select StaffID as "Staff Id", StaffName as "Name",StaffAddress as "Address" from Staff;
select SupplierID as "Supplier ID", SupplierName as "Supplier Name", SupplierContactNo as "Supplier Contact Number" from Supplier;
select DeviceID as "Device ID", DeviceBrand as "Brand", DeviceType as "Type",DeviceName as "Name of product", Price as "Price" from Devices;
select SerialNumber as "Serial Number",SupplierID as "Supplier ID",DeviceID as "Device ID", DateSupplied as "Date Supplied" from Stock;


--Verification that the selling table works.
select SI.SerialNumber, DeviceName, CustomerName,StaffName from SellsItem SI
join Customer C on SI.CustomerID = C.CustomerID
join Stock Sk on SI.SerialNumber = Sk.SerialNumber
join Devices D on Sk.DeviceID = D.DeviceID
join Staff Sf on SI.StaffID = Sf.StaffID;
