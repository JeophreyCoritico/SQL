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
(4, 'Crunch', 'Jerome', 'M'),
(5, 'Cookie', 'Jam', 'M'),
(6, 'Carrot', 'Jane', 'F'),
(7, 'Cordial', 'Juice', 'F'),
(8, 'Candy', 'Joe', 'M');

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
(4, 'East', 'Sep', 22 , 2000, 2209, '12/12/1999'),
(5, 'East', 'Sep', 22 , 2000, 2209, '12/12/1999'),
(6, 'East', 'Sep', 22 , 2000, 2209, '12/12/1999'),
(7, 'North', 'Jan', 9 , 2016, 200, '12/12/1999'),
(8, 'South', 'Mar', 22 , 1971, 357, '12/12/1999');

-- ---QUERY 1---
-- SELECT C.GivenName, C.Surname, B.TourName, T.Description, B.EventYear, B.EventMonth, B.EventDay, E.EventFee, B.DateBooked, B.Payment
-- from BookingPRAC B
-- Inner JOIN ClientPRAC C
-- on B.ClientID = C.ClientID
-- Inner JOIN EventPRAC E
-- on E.EventYear = B.EventYear and E.EventMonth = B.EventMonth and E.EventDay = B.EventDay
-- Inner Join TourPRAC T
-- on T.TourName = B.TourName

-- ---QUERY 2---
-- Select EventMonth, TourName, COUNT(ClientID) as NumBookings
-- from BookingPRAC 
-- Group by EventMonth, TourName

-- ---QUERY 3---
-- Select * from BookingPRAC
-- where Payment > (Select AVG(Payment) from BookingPRAC)

-- Select AVG(Payment) as AveragePayment from BookingPRAC

-- ---Query 1 View---
-- Create view Query_1 as 
-- SELECT C.GivenName, C.Surname, B.TourName, T.Description, B.EventYear, B.EventMonth, B.EventDay, E.EventFee, B.DateBooked, B.Payment
-- from BookingPRAC B
-- Inner JOIN ClientPRAC C
-- on B.ClientID = C.ClientID
-- Inner JOIN EventPRAC E
-- on E.EventYear = B.EventYear and E.EventMonth = B.EventMonth and E.EventDay = B.EventDay
-- Inner Join TourPRAC T
-- on T.TourName = B.TourName

-- Select * from Query_1