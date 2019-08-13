--------------------------- TASK 6 ---------------------------



--------------------------- TEST 1 (QUERY 1) ---------------------------
Select C.ClientID, Q.GivenName, Q.Surname, Q.TourName, T.Description from Query_1 Q
Inner Join ClientPRAC C
on Q.GivenName = C.GivenName and Q.Surname = C.Surname
inner join TourPrac T
on T.TourName = Q.TourName

--Test Query proves the data given from 
--Query_1 matches with the data 
--given from tables: TourPRAC and EventPRAC
--------------------------- TEST 1 (QUERY 1) ---------------------------



--------------------------- TEST 2 (QUERY 2) ---------------------------
--Selecting all of BookingPrac
Select * from BookingPRAC
Order by TourName

--Filtering only 'North' tours
Select * from BookingPRAC
where TourName = 'North'

--Filtering only 'East' tours
Select * from BookingPRAC
where TourName = 'East'

--Filtering only 'South' tours
Select * from BookingPRAC
where TourName = 'South'

--Filtering only 'West' tours
Select * from BookingPRAC
where TourName = 'West'

--Test Queries prove that the COUNT(CLientID) is 
--accurate by filering the BookingPRAC table and 
--counting the number of rows
--------------------------- TEST 2 (QUERY 2) ---------------------------



--------------------------- TEST 3 (QUERY 3) ---------------------------
--Showing all payments
Select ClientID, TourName, Payment from BookingPRAC
order by ClientID

--Showing payments that is higher than the average of payments
Select ClientID, TourName, Payment from BookingPRAC
where Payment > (Select AVG(Payment) from BookingPRAC)

--The average of payments
Select AVG(Payment) as AveragePayment from BookingPRAC

--Test Queries proves Query 3 shows the correct data by 
--showing what the average of payments is and 
--comparing the payments with the 
--filtered and non-filtered tests
--------------------------- TEST 3 (QUERY 3) ---------------------------