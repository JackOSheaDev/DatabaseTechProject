use TechShop
begin transaction

--The transaction i am simulating is that the price and release date of a new product was announced
--and stock is being ordered into the tech shop.
update Devices set Price = 600, ReleaseDate = getdate() where DeviceID =2;
insert into Stock(SerialNumber, SupplierID, DeviceID,DateSupplied) values (10000016, 1, 2,'2022-04-15');
select * from Stock;
--commit
rollback


--Shows how the stock table didn't change because the commit wasn't committed.
select * from Stock;