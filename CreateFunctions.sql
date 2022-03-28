--Creates a function which checks if the price is less than 100 on an item.
create function checkPrice
    (
    --Takes in the serial number of the item.
    @SerialNumber as numeric
    )
--Returns an integer value.
returns int
as
begin
    --Joins stock table with Devices table and checks if the price is less than 100.
    if (
        select sum(Price) from Devices
        join Stock S on Devices.DeviceID = S.DeviceID
        where SerialNumber=@SerialNumber)< 100
        --Returns 1 if the price is less than 100
        return 1

    --Returns 0 otherwise.
    return 0
--Ends function
end

--Creates a function which checks if there is an entry for the customers name.
create function checkName
    (
    --Takes in the ID of the customer as an argument.
    @CustomerID as INT
    )
--Returns an integer value.
returns int
as
begin
    --Checks if there is an entry for the Customers name.
    if (
        select count(CustomerName) from Customer
        where CustomerID = @CustomerID
        ) > 0
        --Returns 1 if there is an entry
        return 1
    --Returns 0 if no entry.
    return 0
--End function.
end


--Creates a function which checks if there is an entry for the customers phone number.
create function checkPhoneNo
    (
    --Takes in the ID of the customer as an argument.
    @CustomerID as INT
    )
--Returns an integer value.
returns int
as
begin
    --Checks if there is an entry for the Customers phone number
    if (
        select count(CustomerPhone) from Customer
        where CustomerID = @CustomerID
        )= 0
        --If there is an entry returns 1
        return 1
    --If there isn't an entry returns 0
    return 0
--Ends function.
end