INSERT INTO Booking (CurrencyCode, RecordLocator) VALUES 
('BRL', 'ABC123'),
('USD', 'ABC123'),
('BRL', 'XYZ123'),
('USD', 'XYZ123');

INSERT INTO BookingPassenger (BookingID, TotalCost) VALUES
(1, 75.50),
(1, 20.50),
(2, 33.60),
(2, 12.32),
(3, 95.50),
(3, 36.12),
(4, 18.33),
(4, 11.23);

INSERT INTO PassengerJourneySegment (PassengerID, SegmentID, DepartureStation, ArrivalStation, DepartureDate, FlightNumber)
VALUES
(1, 1, 'ABC', 'XYZ', '2021-10-30', 'ABCD'),
(1, 2, 'ABC', 'JKL', '2022-11-09', 'AB12'),
(1, 3, 'XYZ', 'ABC', '2022-12-09', 'AB13'),
(2, 4, 'XYZ', 'ABC', '2023-12-09', 'AB13'),
(2, 5, 'ABC', 'JKL', '2024-12-09', 'AB13');