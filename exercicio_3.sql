USE Scan;

DELIMITER $$

CREATE PROCEDURE unique_passengers(IN departure_date datetime, IN flight_number char(6))
BEGIN
	SELECT pjs.DepartureStation,
	pjs.ArrivalStation,
	COUNT(pjs.PassengerID) as passengers
	FROM PassengerJourneySegment as pjs
	WHERE pjs.DepartureDate = '2021-10-30' AND pjs.FlightNumber = 'ABCD' 
	GROUP BY pjs.DepartureStation, pjs.ArrivalStation;
END $$

DELIMITER ;
