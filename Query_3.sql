Select * from BookingPRAC
where Payment > (Select AVG(Payment) from BookingPRAC)
