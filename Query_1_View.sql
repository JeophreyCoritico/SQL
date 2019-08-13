Create view Query_1 as 
SELECT C.GivenName, C.Surname, B.TourName, T.Description, B.EventYear, B.EventMonth, B.EventDay, E.EventFee, B.DateBooked, B.Payment
from BookingPRAC B
Inner JOIN ClientPRAC C
on B.ClientID = C.ClientID
Inner JOIN EventPRAC E
on E.EventYear = B.EventYear and E.EventMonth = B.EventMonth and E.EventDay = B.EventDay
Inner Join TourPRAC T
on T.TourName = B.TourName

Select * from Query_1