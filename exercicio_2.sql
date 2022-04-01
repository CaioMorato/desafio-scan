-- tentativa 1 não deu certo

SELECT pjs.DepartureStation,
pjs.ArrivalStation,
COUNT(DISTINCT pjs.PassengerID) as passengers
FROM PassengerJourneySegment as pjs
INNER JOIN PassengerJourneySegment as PJS
ON pjs.SegmentID = PJS.PassengerID
GROUP BY pjs.DepartureStation, pjs.ArrivalStation;


-- tentativa 2 correta (acredito eu)

SELECT pjs.DepartureStation,
pjs.ArrivalStation,
COUNT(pjs.PassengerID) as passengers
FROM PassengerJourneySegment as pjs
GROUP BY pjs.DepartureStation, pjs.ArrivalStation;