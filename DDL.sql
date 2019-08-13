drop table BookingPRAC
drop table EventPRAC 
drop table ClientPRAC 
drop table TourPRAC 


Create table TourPRAC (
    TourName NVARCHAR(100),
    Description NVARCHAR(500),
    Primary Key (TourName),
    check(TourName in ('North', 'South', 'East', 'West')));

Create table ClientPRAC (
    ClientID INT,
    Surname NVARCHAR(100) NOT NULL,
    GivenName NVARCHAR(100) NOT NULL,
    Gender NVARCHAR(1) NULL,
    Primary Key (ClientID),
    check(Gender in ('M', 'F', 'I')));

Create table EventPRAC (
    TourName NVARCHAR(100),
    EventMonth NVARCHAR(3),
    EventDay INT,
    EventYear INT,
    EventFee MONEY NOT NULL,
    Primary Key (EventMonth, EventDay, EventYear, TourName),
    FOREIGN Key (TourName) references TourPRAC,
    check(EventMonth in ('Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec')),
    check(EventDay >= 1 and EventDay <= 31),
    check(Len(EventYear) = 4),
    check(EventFee >0));

Create table BookingPRAC (
    ClientID INT,
    TourName NVARCHAR(100),
    EventMonth NVARCHAR(3),
    EventDay INT,
    EventYear INT,
    Payment MONEY NULL,
    DateBooked DATE NOT NULL,
    Primary Key (ClientID, TourName, EventMonth, EventDay, EventYear),
    FOREIGN Key (EventMonth, EventDay, EventYear, TourName) references EventPRAC,
    FOREIGN Key (ClientID) references ClientPRAC,
    check(EventMonth in ('Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec')),
    check(EventDay >= 1 and EventDay <= 31),
    check(Len(EventYear) = 4));




SELECT table_catalog [database], table_schema [schema], table_name name, table_type type
FROM INFORMATION_SCHEMA.TABLES
WHERE table_name LIKE '%PRAC'
GO

