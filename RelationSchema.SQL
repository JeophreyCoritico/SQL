/* 
--- RELATION SCHEMA ----
Tour(TourName, Description)
PK(TourName)

Client(ClientID, Surname, GivenName, Gender)
PK(ClientID)

Event(EventYear, EventMonth, EventDay, Fee, TourName)
PK(EventYear, EventMonth, EventDay, TourName)
FK(TourName) references Tour

Booking(DateBooked, Payment, ClientID, EventYear, EventMonth, EventDay, TourName)git 
FK(ClientID, EventYear, EventMonth, EventDay, TourName)
FK(ClientID) references Client
FK(EventYear, EventMonth, EventDay, TourName) references Event
*/

/* --- DDL --- */