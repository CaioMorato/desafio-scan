SELECT bo.CurrencyCode,
SUM(bp.TotalCost)
FROM Booking as bo
JOIN BookingPassenger as bp
ON bo.BookingID = bp.BookingID
WHERE bo.RecordLocator = 'ABC123'
GROUP BY bo.CurrencyCode;