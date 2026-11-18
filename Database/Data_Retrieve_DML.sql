
-- REGISTER A PASSENGER

INSERT INTO Person
(personID, username, passwordHash, name, address, contactNo, accountStatus)
VALUES
('P011', 'john11', 'hash011', 'John Perera', 'Colombo', '0712345678', 'Active');

INSERT INTO Passenger
(passengerID, personID, passportNumber, nationality)
VALUES
('PA036', 'P011', 'N6789012', 'Sri Lankan');

-- Register Checking Staff
INSERT INTO Person
(personID, username, passwordHash, name, address, contactNo, accountStatus)
VALUES
('P012', 'checking01', 'hash012', 'Ruwan Silva', 'Kandy', '0723456789', 'Active');

INSERT INTO Employee
(employeeID, personID, roleID, shift)
VALUES
('E016', 'P012', 'R002', 'Morning');

-- Register Baggage Handler
INSERT INTO Person
(personID, username, passwordHash, name, address, contactNo, accountStatus)
VALUES
('P036', 'handler01', 'hash013', 'Nimal Perera', 'Gampaha', '0734567890', 'Active');

INSERT INTO Employee
(employeeID, personID, roleID, shift)
VALUES
('E017', 'P036', 'R004', 'Night');

-- Register Customer Service Officer
INSERT INTO Person
(personID, username, passwordHash, name, address, contactNo, accountStatus)
VALUES
('P037', 'officer01', 'hash014', 'Kasun Fernando', 'Negombo', '0745678901', 'Active');

INSERT INTO Employee
(employeeID, personID, roleID, shift)
VALUES
('E018', 'P037', 'R003', 'Evening');

-- REGISTER A BAGGAGE

INSERT INTO Baggage
(tagNumber, passengerID, weight, status, currentLocationID)
VALUES
('BG10006', 'PA006', 22.50, 'Checked In', 'L001');

--  ASSIGN BAGGAGE TO A FLIGHT

INSERT INTO BaggageFlight
(baggageTagNumber, flightID, sequenceNumber)
VALUES
('BG10006', 'F001', 1);

-- Connecting flight
INSERT INTO BaggageFlight
(baggageTagNumber, flightID, sequenceNumber)
VALUES
('BG10006', 'F002', 2);

-- CREATE A TRACKING RECORD

INSERT INTO TrackingRecord
(trackingID, baggageTagNumber, updaterID, flightID,
timestamp, status, locationID, remarks)
VALUES
('T009', 'BG10006', 'P012', 'F001',
'2026-09-15 16:30:00',
'Checked In',
'L001',
'Baggage checked in by checking staff');

--  UPDATE BAGGAGE LOCATION AND STATUS

UPDATE Baggage
SET currentLocationID = 'L003',
    status = 'In Sorting'
WHERE tagNumber = 'BG10006';

-- Create another tracking record for the movement
INSERT INTO TrackingRecord
(trackingID, baggageTagNumber, updaterID, flightID,
timestamp, status, locationID, remarks)
VALUES
('T010', 'BG10006', 'P036', 'F001',
'2026-09-15 17:10:00',
'In Sorting',
'L003',
'Baggage moved to sorting area');

--  SHOW BAGGAGE DESTINATION

SELECT 
    b.tagNumber,
    f.flightNumber,
    a.airportName AS destination,
    a.city,
    a.country
FROM Baggage b
INNER JOIN BaggageFlight bf
    ON b.tagNumber = bf.baggageTagNumber
INNER JOIN Flight f
    ON bf.flightID = f.flightID
INNER JOIN Airport a
    ON f.arrivalAirportID = a.airportID
WHERE b.tagNumber = 'BG10006'
ORDER BY bf.sequenceNumber DESC
LIMIT 1;

-- TRACK BAGGAGE BY TAG NUMBER

SELECT
    b.tagNumber,
    tr.timestamp,
    tr.status,
    l.locationName,
    tr.remarks
FROM Baggage b
INNER JOIN TrackingRecord tr
    ON b.tagNumber = tr.baggageTagNumber
INNER JOIN Location l
    ON tr.locationID = l.locationID
WHERE b.tagNumber = 'BG10006'
ORDER BY tr.timestamp ASC;

--  REPORT LOST BAGGAGE

INSERT INTO LostBaggageReport
(reportID, tagNumber, passengerID, officerID,
reason, status, reportDate, resolvedDate)
VALUES
('LR006',
 'BG10006',
 'PA006',
 'E008',
 'Baggage was not received at destination',
 'Open',
 '2026-09-20 09:00:00',
 NULL);

--  UPDATE LOST BAGGAGE REPORT

UPDATE LostBaggageReport
SET status = 'Resolved',
    resolvedDate = '2026-09-21 14:30:00'
WHERE reportID = 'LR006';

--  SHOW ALL BAGGAGE OF A PASSENGER

SELECT
    p.name,
    pa.passportNumber,
    b.tagNumber,
    b.weight,
    b.status
FROM Person p
INNER JOIN Passenger pa
    ON p.personID = pa.personID
INNER JOIN Baggage b
    ON pa.passengerID = b.passengerID
WHERE pa.passengerID = 'PA006';

--  SHOW PASSENGER'S FLIGHTS

SELECT
    p.name,
    f.flightNumber,
    a1.airportName AS departureAirport,
    a2.airportName AS arrivalAirport,
    f.departureDate,
    f.departureTime
FROM Person p
INNER JOIN Passenger pa
    ON p.personID = pa.personID
INNER JOIN PassengerFlight pf
    ON pa.passengerID = pf.passengerID
INNER JOIN Flight f
    ON pf.flightID = f.flightID
INNER JOIN Airport a1
    ON f.departureAirportID = a1.airportID
INNER JOIN Airport a2
    ON f.arrivalAirportID = a2.airportID
WHERE pa.passengerID = 'PA005';

-- SHOW COMPLETE BAGGAGE HISTORY

SELECT
    tr.trackingID,
    b.tagNumber,
    tr.timestamp,
    tr.status,
    l.locationName,
    p.name AS updatedBy,
    tr.remarks
FROM TrackingRecord tr
INNER JOIN Baggage b
    ON tr.baggageTagNumber = b.tagNumber
INNER JOIN Location l
    ON tr.locationID = l.locationID
INNER JOIN Person p
    ON tr.updaterID = p.personID
WHERE b.tagNumber = 'BG10006'
ORDER BY tr.timestamp ASC;