drop table BookingPRAC
drop table EventPRAC 
drop table ClientPRAC 
drop table TourPRAC 


Create table TourPRAC (
    TourName NVARCHAR(5) NOT NULL,
    Description NVARCHAR(100) NOT NULL,
    Primary Key (TourName));

Create table ClientPRAC (
    ClientID NUMERIC(1),
    Surname NVARCHAR(50) NOT NULL,
    GivenName NVARCHAR(50) NOT NULL,
    Gender NVARCHAR(1) NOT NULL,
    Primary Key (ClientID),
    check(Gender in ('M', 'F')));

Create table EventPRAC (
    TourName NVARCHAR(5) NOT NULL,
    EventMonth NVARCHAR(3) NOT NULL,
    EventDay NUMERIC(1),
    EventYear NUMERIC(4),
    EventFee NUMERIC(3) NOT NULL,
    Primary Key (EventMonth, EventDay, EventYear, TourName),
    FOREIGN Key (TourName) references TourPRAC);

Create table BookingPRAC (
    ClientID NUMERIC(1),
    TourName NVARCHAR(5) NOT NULL,
    EventMonth NVARCHAR(3) NOT NULL,
    EventDay NUMERIC(1),
    EventYear NUMERIC(4),
    Payment NUMERIC(3),
    DateBooked DATE,
    Primary Key (ClientID, TourName, EventMonth, EventDay, EventYear));



