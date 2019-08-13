Select EventMonth, TourName, COUNT(ClientID) as NumBookings
from BookingPRAC 
Group by EventMonth, TourName