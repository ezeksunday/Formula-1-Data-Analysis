SELECT Name																				-- Q1
FROM constructors;

SELECT GivenName, FamilyName															-- Q2
FROM drivers;

SELECT COUNT(ConstructorID) AS 'TotalConstructors'										-- Q3
FROM constructors;

SELECT COUNT(DriverID) AS 'TotalDrivers'												-- Q4
FROM drivers;

SELECT *																				-- Q5
FROM races
WHERE Season = 2020;

SELECT Name, Nationality																-- Q6
FROM constructors;

SELECT GivenName AS FirstName, FamilyName AS LastName									-- Q7
FROM drivers;

SELECT DISTINCT (Nationality)															-- Q8
FROM drivers;

SELECT DISTINCT Nationality
FROM drivers;

SELECT position, points, ROUND((points/position),2) AS PointsPerPositions				-- Q9
FROM results_history;

SELECT CONCAT(GivenName, " ", FamilyName) AS FullName									-- Q10
FROM drivers;

SELECT *																				-- Q11
FROM races
WHERE Season = 2022;

SELECT *																				-- Q12
FROM drivers
WHERE Nationality IN ('German', 'British');

SELECT *
FROM drivers
WHERE Nationality = 'German' OR Nationality = 'British';

SELECT *																				-- Q13
FROM constructors
WHERE Name LIKE '%Ferrari%';

SELECT *																				-- Q14
FROM results
WHERE ConstructorID IN ('ferrari', 'williams');

SELECT driverid, GivenName, FamilyName, DateOfBirth										-- Q15
FROM drivers
WHERE DateOfBirth < '2000-01-01';

SELECT *
FROM drivers
WHERE DateOfBirth < '2000-01-01';

SELECT *																				-- Q16
FROM results_history
ORDER BY Season ASC;

SELECT *																				--  Q17
FROM drivers
ORDER BY Nationality, GivenName;

SELECT driverid, GivenName, FamilyName, DateOfBirth
FROM drivers
ORDER BY Nationality, GivenName;

SELECT *																				-- Q18
FROM results
ORDER BY Points DESC;

SELECT *		-- NULLs are sorted first for ASC, last for DESC						-- Q19
FROM drivers
ORDER BY DateOfBirth ASC;

SELECT DriverName, points, Season, Position, ConstructorName							-- Q20
FROM results_history
WHERE Season = 2020
ORDER BY Points DESC
LIMIT 5;

SELECT *																				-- Q21
FROM constructors
LIMIT 10;

SELECT 
	constructorid, 
    Name, 
    year
FROM constructors
LIMIT 10;

SELECT 																					-- Q22
	driverid,
    GivenName,
    FamilyName,
    Nationality
FROM drivers
ORDER BY DriverID 
LIMIT 10 OFFSET 10;

SELECT DriverID, DriverName, Points, Position, Season, Nationality						-- Q23
FROM results_history 
WHERE Season = 2021
ORDER BY Points DESC
LIMIT 10 OFFSET 5;

SELECT *																				-- Q24
FROM results_history
WHERE Season = 2020
LIMIT 5;

SELECT DriverName, Points, Position, ConstructorName, Season, Round						-- Q25
FROM results_history
WHERE Season = 2020
ORDER BY
    Points DESC, 	-- Assuming you want to sort by points for consistent pagination
    Position ASC 	-- Then by position, or any other consistent column
LIMIT 10 OFFSET 10;

SELECT SUM(Points) AS TotalPoints_2024													-- Q26
FROM results_history
WHERE Season = 2024;

SELECT AVG(Points) AS AveragePoints_2000												-- Q27
FROM results_history
WHERE Season = 2000;

SELECT																					-- Q28
    MAX(Points) AS MaxPoints_2021,
    MIN(Points) AS MinPoints_2021
FROM results_history
WHERE Season = 2021;

SELECT COUNT(*) AS NumberOfRaces2000													-- Q29
FROM results_history
WHERE Season = 2000;

SELECT																					-- Q30
    ConstructorName,
    GROUP_CONCAT(DISTINCT DriverName ORDER BY DriverName ASC SEPARATOR ', ') AS DriversList
FROM
    results_history
GROUP BY
    ConstructorName
ORDER BY
    ConstructorName ASC;

SELECT ConstructorName, SUM(Points) AS TotalPoints										-- Q31
FROM results_history
WHERE Season = 2000
GROUP BY ConstructorName
ORDER BY TotalPoints DESC;

SELECT ConstructorName, SUM(Points) AS TotalPoints										-- Q32
FROM results_history
WHERE Season = 2002
GROUP BY ConstructorName
HAVING SUM(Points) > 20
ORDER BY TotalPoints DESC;

SELECT ConstructorName, COUNT(*) AS NumberOfRaces										-- Q33
FROM results_history
WHERE Season = 2020
GROUP BY ConstructorName
ORDER BY NumberOfRaces DESC;

SELECT DriverNationality, DriverName, SUM(Points) AS TotalPoints						-- Q34
FROM results_history
GROUP BY DriverNationality, DriverName
ORDER BY DriverNationality ASC, TotalPoints DESC;

SELECT Season, ConstructorName, AVG(Points) AS AveragePoints							-- Q35
FROM results_history
GROUP BY Season, ConstructorName
ORDER BY Season ASC, AveragePoints DESC;

SELECT drivers.GivenName, drivers.FamilyName, constructors.Name AS ConstructorName, results_history.Season		-- Q36
FROM results_history
INNER JOIN drivers ON results_history.DriverID = drivers.driverid
INNER JOIN constructors ON results_history.ConstructorID = constructors.constructorid
WHERE results_history.Season = 2000
ORDER BY drivers.FamilyName ASC, drivers.GivenName ASC;

SELECT DriverName, ConstructorName, Season
FROM results_history
WHERE Season = 2000;

SELECT constructors.Name AS ConstructorName, drivers.GivenName, drivers.FamilyName								-- Q37
FROM constructors
LEFT JOIN results_history ON constructors.constructorid = results_history.ConstructorID
LEFT JOIN drivers ON results_history.DriverID = drivers.driverid
ORDER BY
    constructors.Name ASC,
    drivers.GivenName ASC;

SELECT																											-- Q38																		
    results_history.*, -- Select all columns from the results_history table (the 'right' table in the join)
    drivers.GivenName,
    drivers.FamilyName,
    drivers.DateOfBirth,
    drivers.Nationality
FROM drivers
RIGHT JOIN results_history ON drivers.driverid = results_history.DriverID
ORDER BY
    results_history.Season DESC,
    results_history.Round DESC,
    results_history.Position ASC;
    
-- USING LEFT JOIN
SELECT
    results_history.*, -- Select all columns from the results_history table
    drivers.GivenName,
    drivers.FamilyName,
    drivers.DateOfBirth,
    drivers.Nationality
FROM results_history
LEFT JOIN drivers ON results_history.DriverID = drivers.driverid
ORDER BY
    results_history.Season DESC,
    results_history.Round DESC,
    results_history.Position ASC;

SELECT drivers.driverid, drivers.GivenName, drivers.FamilyName, drivers.DateOfBirth, drivers.Nationality, 	-- Q39
	results_history.Season, results_history.Round, results_history.Points, results_history.Position,      
   results_history.ConstructorName, results_history.CircuitID         
    -- You can include more columns from results_history as needed
FROM drivers
LEFT JOIN results_history ON drivers.driverid = results_history.DriverID
ORDER BY
    drivers.FamilyName ASC,
    drivers.GivenName ASC,
    results_history.Season DESC,
    results_history.Round DESC;

SELECT drivers.GivenName, drivers.FamilyName, constructors.Name AS ConstructorName,								-- Q40
    SUM(results_history.Points) AS TotalPoints_2000
FROM drivers
INNER JOIN results_history ON drivers.driverid = results_history.DriverID
INNER JOIN constructors ON results_history.ConstructorID = constructors.constructorid
WHERE results_history.Season = 2000
GROUP BY drivers.driverid, drivers.GivenName, drivers.FamilyName, constructors.Name
ORDER BY 
	TotalPoints_2000 DESC,
    drivers.GivenName ASC;

SELECT DriverName, SUM(Points) AS TotalPoints																	-- Q41
FROM results_history
WHERE Season = 2000
GROUP BY DriverName
HAVING
    SUM(Points) > (SELECT MIN(Points) FROM results_history WHERE Season = 2000)
ORDER BY TotalPoints DESC;

SELECT drivers.GivenName, drivers.FamilyName, MAX(results_history.Points) AS HighestRacePoints					-- Q42
FROM drivers
INNER JOIN results_history ON drivers.driverid = results_history.DriverID
GROUP BY
    drivers.driverid, 
    drivers.GivenName,
    drivers.FamilyName
ORDER BY
    HighestRacePoints DESC,
    drivers.FamilyName ASC;

SELECT																											-- Q43
    constructors.Name AS ConstructorName,
    drivers.GivenName,
    drivers.FamilyName,
    results_history.Points AS DriverRacePoints,
    avg_pts.AvgPoints AS ConstructorAveragePoints
FROM
    results_history
INNER JOIN drivers ON results_history.DriverID = drivers.driverid
INNER JOIN constructors ON results_history.ConstructorID = constructors.constructorid
INNER JOIN (-- Subquery to calculate the average points for each constructor across all their races
    SELECT ConstructorID, AVG(Points) AS AvgPoints
    FROM results_history
    GROUP BY ConstructorID
) AS avg_pts ON results_history.ConstructorID = avg_pts.ConstructorID
WHERE
   results_history.Points > avg_pts.AvgPoints
ORDER BY
    constructors.Name ASC,
    drivers.GivenName ASC,
    results_history.Points DESC;

WITH DriverTotalPoints AS (																						-- Q44
    -- CTE to calculate the total points for each unique driver in the 2000 season
    SELECT
        DriverID,
        DriverName,
        SUM(Points) AS TotalPoints
    FROM results_history
    WHERE Season = 2000
    GROUP BY DriverID, DriverName
)
SELECT
    AVG(TotalPoints) AS AveragePointsPerDriverIn2000
FROM DriverTotalPoints;

WITH DriversTop3Finishes AS (																					-- Q45
    -- CTE to calculate the total points and count of top 3 finishes for each driver in the 2000 season
    SELECT
        DriverID,
        DriverName,
        COUNT(CASE WHEN Position <= 3 THEN 1 ELSE NULL END) AS NumberOfTop3Finishes,
        SUM(CASE WHEN Position <= 3 THEN Points ELSE 0 END) AS TotalPointsInTop3Finishes
    FROM results_history
    WHERE Season = 2000
    GROUP BY DriverID, DriverName
    HAVING COUNT(CASE WHEN Position <= 3 THEN 1 ELSE NULL END) > 5 -- Filter for drivers with more than 5 top 3 finishes
)
SELECT
    DriverName,
    NumberOfTop3Finishes,
    TotalPointsInTop3Finishes,
    (TotalPointsInTop3Finishes * 1.0 / NumberOfTop3Finishes) AS AveragePointsPerTop3Race
FROM
    DriversTop3Finishes
ORDER BY
    AveragePointsPerTop3Race DESC;
