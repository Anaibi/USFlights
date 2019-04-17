SELECT COUNT(*) FROM Flights;

SELECT `Origin`, AVG(`ArrDelay`) AS prom_arribades, AVG(`DepDelay`) AS prom_sortides FROM Flights GROUP BY `Origin`;

SELECT `Origin`, `colYear`,`colMonth`,`ArrDelay` AS prom_arribades FROM Flights ORDER BY `Origin`, `colYear`,`colMonth`;

SELECT `City`, `colYear`, `colMonth`,`ArrDelay` AS prom_arribades FROM Flights INNER JOIN USAirports ON (Flights.Origin=USAirports.IATA) ORDER BY `City`, `colYear`, `colMonth`;

SELECT `UniqueCarrier`, `colYear`, `colMonth`, AVG(`ArrDelay`) AS avg_delay, SUM(`Cancelled`) AS total_cancelled FROM Flights GROUP BY `UniqueCarrier` ORDER BY total_cancelled DESC;

SELECT `TailNum`, SUM(`Distance`) AS totalDistance FROM `Flights` WHERE (`TailNum` != '') GROUP BY `TailNum` ORDER BY totalDistance DESC LIMIT 10;

SELECT `UniqueCarrier`, AVG(`ArrDelay`) AS avgDelay FROM `Flights` GROUP BY `UniqueCarrier` HAVING avgDelay>10 ORDER BY avgDelay DESC;
