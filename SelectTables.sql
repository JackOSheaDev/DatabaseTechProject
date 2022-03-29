use TechShop

--BASIC SELECTS (Shows use of select and project):
---------------------------------
--CUSTOMER TABLE
select
       CustomerID as "Customer_ID",
       CustomerName as "Customer_Name",
       CustomerPhone as "Phone_Number"
from Customer;

--STAFF TABLE:
select
       StaffID as "Staff_Id",
       StaffName as "Staff_Name",
       StaffAddress as "Address"
from Staff;

--SUPPLIER TABLE:
select
       SupplierID as "Supplier_ID",
       SupplierName as "Supplier_Name",
       SupplierContactNo as "Supplier_Contact_Number"
from Supplier;

--DEVICE TABLE:
select DeviceID as "Device_ID",
       DeviceType as "Device_Brand",
       DeviceName as "Device_Name",
       ReleaseDate as "Release_Year",
       Price as "Price"
from Devices;

--STOCK TABLE:
select
       SerialNumber as "Serial_Number",
       SupplierID as "Supplier_ID",
       DeviceID as "Device_ID",
       DateSupplied as "Date_Supplier",
       -- ADDED DATA
       StaffID as "Staff_ID",
       CustomerID as "Customer_ID",
       DateOfTransaction as "Date_Of_Transaction"
from Stock;

--JOINS:
---------------------------------
--Print out all sold items.(Inner Join)
select
       SerialNumber,
       DeviceName,
       CustomerName,
       StaffID,
       DateOfTransaction
from Stock
inner join Devices D on (Stock.DeviceID = D.DeviceID)
inner join Customer C on Stock.CustomerID = C.CustomerID;

--Prints out all items whether they are sold or unsold, and the items not in stock. (Full Join)
select
       SerialNumber,
       DeviceName,
       CustomerName,
       StaffID,
       DateOfTransaction
from Stock
full join Devices D on (Stock.DeviceID = D.DeviceID)
full join Customer C on Stock.CustomerID = C.CustomerID;

--Prints out all items that were in stock, but may have been sold. (Left Join)
select
       SerialNumber,
       DeviceName,
       CustomerName,
       StaffID,
       DateOfTransaction
from Stock
left join Devices D on (Stock.DeviceID = D.DeviceID)
left join Customer C on Stock.CustomerID = C.CustomerID;


--Prints out all items not in stock (Except)
select
       SerialNumber,
       DeviceType,
       DeviceName
from Stock
full join Devices D on (Stock.DeviceID = D.DeviceID)
except
select
       SerialNumber,
       DeviceType,
       DeviceName
from Stock
full join Devices D on (Stock.DeviceID = D.DeviceID)
where SerialNumber is not null


--Prints out the intersection of the watches table and the apple products table. (Intersect)
select
       DeviceName,
       DeviceType,
       DeviceBrand
from Devices
where DeviceType = 'Watch'
intersect
select
       DeviceName,
       DeviceType,
       DeviceBrand
from Devices
where DeviceBrand = 'Apple'

--Prints out all the samsung and apple products in the table (Union)
select
       DeviceName,
       DeviceType,
       DeviceBrand
from Devices
where DeviceBrand = 'Apple'
union
select
       DeviceName,
       DeviceType,
       DeviceBrand
from Devices
where DeviceBrand = 'Samsung'

--Prints out all items sold by a member of the Simpsons family(Subquery)
select SerialNumber,
       DeviceID,
       DateOfTransaction,
       StaffName
from Stock
join Staff S on Stock.StaffID = S.StaffID
where Stock.StaffID in (select StaffID from Staff where StaffAddress like '742 evergreen terrace')

--Prints out how many items each staff member has sold(Aggregation)
select Staff.StaffName, count(*) as Sold_Products from Staff
left join Stock S on Staff.StaffID = S.StaffID
where (S.StaffID is not null)
group by Staff.StaffName




