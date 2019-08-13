INSERT into TourPRAC(TourName, Description)
values 
('North', 'Tour of wineries and outlets of the Bedigo and Castlemaine region'),
('East', 'Tour of Stuff'),
('South', 'Tour of Things'),
('West', 'Tour of Tours');

INSERT into ClientPRAC(ClientID, Surname, GivenName, Gender)
VALUES
(1, 'Price', 'Taylor', 'M'),
(102575814, 'Coritico', 'Jeophrey', 'M'),
(3, 'Croissant', 'Jenny', 'F'),
(4, 'Crunch', 'Jerome', 'M');

INSERT into EventPRAC(TourName, EventMonth, EventDay, EventYear, EventFee)
VALUES
('North', 'Jan', 9 , 2016, 200),
('East', 'Sep', 22 , 2000, 2209),
('South', 'Mar', 22 , 1971, 357),
('West', 'Nov', 13 , 1973, 1322);

INSERT into BookingPRAC(ClientID, TourName, EventMonth, EventDay, EventYear, Payment, DateBooked)
VALUES
(1, 'North', 'Jan', 9, 2016, 200, '10/12/2015'),
(102575814, 'South', 'Mar', 22 , 1971, 357, '11/02/1969'),
(3, 'West', 'Nov', 13 , 1973, 1322, '05/08/1969'),
(4, 'East', 'Sep', 22 , 2000, 2209, '12/12/1999');

select * from ClientPRAC


