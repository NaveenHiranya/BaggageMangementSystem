-- 1. PERSON


INSERT INTO Person
(personID, username, passwordHash, name, address, contactNo, accountStatus)
VALUES
('P001', 'naveen01', 'hash001', 'Naveen Hiranya', 'Colombo', '+94 715903125', 'Active'),
('P002', 'kamal02', 'hash002', 'Kamal Perera', 'Kandy', '+94 728992342', 'Active'),
('P003', 'saman03', 'hash003', 'Saman Silva', 'Galle', '+94 735578921', 'Active'),
('P004', 'amal04', 'hash004', 'Amal Fernando', 'Negombo', '+94 749972164', 'Active'),
('P005', 'kasun05', 'hash005', 'Kasun Jayasuriya', 'Matara', '+94 766973210', 'Active'),
('P006', 'tharindu06', 'hash006', 'Tharindu Perera', 'Colombo', '+94 761145977', 'Active'),
('P007', 'dilshan07', 'hash007', 'Dilshan Silva', 'Kurunegala', '+94 722788460', 'Active'),
('P008', 'nimal08', 'hash008', 'Nimal Fernando', 'Gampaha', '+94 780034588', 'Active'),
('P009', 'dusuni09', 'hash009', 'Dusuni Perera', 'Kegalle', '+94 730967884', 'Active'),
('P010', 'ravi10', 'hash010', 'Ravi Fernando', 'Colombo', '+94 712343557', 'Active'),
('P015', 'sunil15', 'hash015', 'Sunil Rathnayake', 'Anuradhapura', '+94 711212121', 'Active'),
('P016', 'chamara16', 'hash016', 'Chamara Wickramasinghe', 'Kurunegala', '+94 722323232', 'Active'),
('P017', 'ishara17', 'hash017', 'Ishara Gunawardena', 'Jaffna', '+94 733434343', 'Active'),
('P018', 'dinesh18', 'hash018', 'Dinesh Rajapaksha', 'Ratnapura', '+94 744545454', 'Active'),
('P019', 'nadeesha19', 'hash019', 'Nadeesha Kumari', 'Badulla', '+94 755656565', 'Active'),
('P020', 'lakshan20', 'hash020', 'Lakshan Bandara', 'Trincomalee', '+94 711767676', 'Active'),
('P021', 'harshi21', 'hash021', 'Harshi Wijesinghe', 'Ampara', '+94 722878787', 'Active'),
('P022', 'pradeep22', 'hash022', 'Pradeep Karunaratne', 'Puttalam', '+94 733989898', 'Active'),
('P023', 'anushka23', 'hash023', 'Anushka Dissanayake', 'Hambantota', '+94 744090909', 'Active'),
('P024', 'malith24', 'hash024', 'Malith Senanayake', 'Polonnaruwa', '+94 755101010', 'Active'),
('P025', 'jithmi25', 'hash025', 'Jithmi Dileesha', 'Gampaha', '+94 715428945', 'Active'),
('P026', 'edithe26', 'hash026', 'Edithe Leggis', 'Tokyo', '+81 9012345678', 'Active'),
('P027', 'elwood27', 'hash027', 'Elwood Catt', 'Granada', '+505 81234567', 'Active'),
('P028', 'darby28', 'hash028', 'Darby Felgate', 'Moscow', '+7 9123456789', 'Active'),
('P029', 'dominica29', 'hash029', 'Dominica Pyle', 'Beijing', '+86 13812345678', 'Active'),
('P030', 'bay30', 'hash030', 'Bay Pencost', 'Shanghai', '+86 13987654321', 'Active'),
('P031', 'lora31', 'hash031', 'Lora Durbann', 'Brasília', '+55 11912345678', 'Active'),
('P032', 'rand32', 'hash032', 'Rand Bram', 'Abidjan', '+225 0712345678', 'Active'),
('P033', 'perceval33', 'hash033', 'Perceval Dallosso', 'Hanoi', '+84 912345678', 'Active'),
('P034', 'aleda34', 'hash034', 'Aleda Pigram', 'Ramallah', '+970 591234567', 'Active'),
('P035', 'burlie35', 'hash035', 'Burlie Schustl', 'Phuket', '+66 812345678', 'Active');


-- 2. ROLE


INSERT INTO Role
(roleID, roleName)
VALUES
('R001', 'Administrator'),
('R002', 'Checking Staff'),
('R003', 'Customer Service Officer'),
('R004', 'Baggage Handler');


-- 3. EMPLOYEE

INSERT INTO Employee
(employeeID, personID, roleID, shift)
VALUES
('E001', 'P001', 'R001', 'Morning'),
('E002', 'P002', 'R002', 'Morning'),
('E003', 'P003', 'R003', 'Evening'),
('E004', 'P004', 'R004', 'Night'),
('E005', 'P005', 'R002', 'Morning'),
('E006', 'P015', 'R001', 'Morning'),
('E007', 'P016', 'R002', 'Evening'),
('E008', 'P017', 'R003', 'Night'),
('E009', 'P018', 'R004', 'Morning'),
('E010', 'P019', 'R002', 'Evening'),
('E011', 'P020', 'R001', 'Night'),
('E012', 'P021', 'R003', 'Morning'),
('E013', 'P022', 'R004', 'Evening'),
('E014', 'P023', 'R002', 'Night'),
('E015', 'P024', 'R004', 'Morning');

-- 4. PASSENGER


INSERT INTO Passenger
(passengerID, personID, passportNumber, nationality)
VALUES
('PA001', 'P006', 'N1234567', 'Sri Lankan'),
('PA002', 'P007', 'N2345678', 'Sri Lankan'),
('PA003', 'P008', 'N3456789', 'Sri Lankan'),
('PA004', 'P009', 'N4567890', 'Sri Lankan'),
('PA005', 'P010', 'N5678901', 'Sri Lankan'),
('PA006', 'P025', 'N6789124', 'Sri Lankan'),
('PA007', 'P026', 'N7890235', 'Japanese'),
('PA008', 'P027', 'N8901346', 'Nicaraguan'),
('PA009', 'P028', 'N9012457', 'Russian'),
('PA010', 'P029', 'N0123568', 'Chinese'),
('PA011', 'P030', 'N1234679', 'Chinese'),
('PA012', 'P031', 'N2345780', 'Brazilian'),
('PA013', 'P032', 'N3456891', 'Ivorian'),
('PA014', 'P033', 'N4567902', 'Vietnamese'),
('PA015', 'P034', 'N5678013', 'Palestinian'),
('PA016', 'P035', 'N6789Z35', 'Thai');

-- 5. AIRPORT

INSERT INTO Airport
(airportID, airportCode, airportName, city, country)
VALUES
('AP001', 'CMB', 'Bandaranaike International Airport', 'Colombo', 'Sri Lanka'),
('AP002', 'DXB', 'Dubai International Airport', 'Dubai', 'UAE'),
('AP003', 'LHR', 'Heathrow Airport', 'London', 'United Kingdom'),
('AP004', 'DOH', 'Hamad International Airport', 'Doha', 'Qatar'),
('AP005', 'SIN', 'Changi Airport', 'Singapore', 'Singapore'),
('AP006', 'JNB', 'O. R. Tambo International Airport', 'Johannesburg', 'South Africa'),
('AP007', 'DEL', 'Indira Gandhi International Airport', 'Delhi', 'India'),
('AP008', 'SYD', 'Sydney Kingsford Smith Airport', 'Sydney', 'Australia'),
('AP009', 'CDG', 'Charles de Gaulle Airport', 'Paris', 'France'),
('AP010', 'HEL', 'Helsinki Airport', 'Helsinki', 'Finland'),
('AP011', 'GRU', 'São Paulo/Guarulhos International Airport', 'São Paulo', 'Brazil'),
('AP012', 'SVO', 'Sheremetyevo International Airport', 'Moscow', 'Russia'),
('AP013', 'ICN', 'Incheon International Airport', 'Seoul', 'South Korea'),
('AP014', 'FRA', 'Frankfurt Airport', 'Frankfurt', 'Germany'),
('AP015', 'KHI', 'Jinnah International Airport', 'Karachi', 'Pakistan');



-- 6. AIRLINE


INSERT INTO Airline
(airlineID, airlineName, airlineCode)
VALUES
('AL001', 'SriLankan Airlines', 'UL'),
('AL002', 'Emirates', 'EK'),
('AL003', 'Qatar Airways', 'QR'),
('AL004', 'Singapore Airlines', 'SQ'),
('AL005', 'British Airways', 'BA'),
('AL006', 'Lufthansa', 'LH'),
('AL007', 'Air France', 'AF'),
('AL008', 'Turkish Airlines', 'TK'),
('AL009', 'Cathay Pacific', 'CX'),
('AL010', 'Qantas', 'QF'),
('AL011', 'Air India', 'AI'),
('AL012', 'Japan Airlines', 'JL'),
('AL013', 'Finnair', 'AY'),
('AL014', 'Korean Air', 'KE'),
('AL015', 'KLM Royal Dutch Airlines', 'KL');


-- 7. FLIGHT



INSERT INTO Flight
(flightID, flightNumber, airlineID, departureAirportID,
arrivalAirportID, departureDate, departureTime,arrivalDate, arrivalTime)
VALUES
('F001', 'UL225', 'AL001', 'AP001', 'AP002',
 '2026-09-15', '18:30:00','2026-09-16', '21:45:00'),

('F002', 'EK500', 'AL002', 'AP002', 'AP003',
 '2026-09-16', '02:30:00','2026-09-17', '07:00:00'),

('F003', 'UL308', 'AL001', 'AP001', 'AP004',
 '2026-09-17', '20:00:00','2026-09-17', '22:30:00'),

('F004', 'QR655', 'AL003', 'AP004', 'AP003',
 '2026-09-18', '01:30:00','2026-09-19', '07:00:00'),

('F005', 'SQ469', 'AL004', 'AP001', 'AP005',
 '2026-09-19', '23:00:00','2026-09-20', '06:30:00'),

('F006', 'LH123', 'AL006', 'AP001', 'AP014',
 '2026-09-20', '08:30:00', '2026-09-20', '15:30:00'),

('F007', 'AF456', 'AL007', 'AP009', 'AP001',
 '2026-09-21', '10:00:00', '2026-09-22', '05:30:00'),

('F008', 'TK789', 'AL008', 'AP015', 'AP013',
 '2026-09-22', '14:00:00', '2026-09-22', '22:00:00'),

('F009', 'CX321', 'AL009', 'AP013', 'AP006',
 '2026-09-23', '09:15:00', '2026-09-23', '16:30:00'),

('F010', 'QF654', 'AL010', 'AP011', 'AP001',
 '2026-09-24', '11:00:00', '2026-09-25', '18:00:00'),

('F011', 'AI987', 'AL011', 'AP007', 'AP001',
 '2026-09-25', '07:45:00', '2026-09-25', '11:30:00'),

('F012', 'JL246', 'AL012', 'AP013', 'AP001',
 '2026-09-26', '13:30:00', '2026-09-27', '02:00:00'),

('F013', 'AY135', 'AL013', 'AP010', 'AP009',
 '2026-09-27', '16:00:00', '2026-09-27', '18:30:00'),

('F014', 'KE864', 'AL014', 'AP013', 'AP001',
 '2026-09-28', '20:00:00', '2026-09-29', '03:30:00'),

('F015', 'KL753', 'AL015', 'AP009', 'AP014',
 '2026-09-29', '09:00:00', '2026-09-29', '11:30:00');

-- 8. PASSENGER FLIGHT


INSERT INTO PassengerFlight
(passengerFlightID, passengerID, flightID,
bookingReference, seatNumber, checkInStatus)
VALUES
('PF001', 'PA001', 'F001', 'BK1001', '12A', 'Checked In'),
('PF002', 'PA001', 'F002', 'BK1001', '22C', 'Confirmed'),
('PF003', 'PA002', 'F003', 'BK1002', '14B', 'Checked In'),
('PF004', 'PA003', 'F004', 'BK1003', '18D', 'Confirmed'),
('PF005', 'PA004', 'F005', 'BK1004', '21A', 'Checked In'),
('PF006', 'PA005', 'F001', 'BK1005', '15C', 'Checked In');



-- 9. LOCATION


INSERT INTO Location
(locationID, locationCode, locationName, airportID)
VALUES
('L001', 'CMB-CI', 'CMB Check-in Counter', 'AP001'),
('L002', 'CMB-SC', 'CMB Security Area', 'AP001'),
('L003', 'CMB-SO', 'CMB Sorting Area', 'AP001'),
('L004', 'DXB-TR', 'DXB Transfer Area', 'AP002'),
('L005', 'LHR-B4', 'LHR Baggage Belt 4', 'AP003');


-- 10. BAGGAGE


INSERT INTO Baggage
(tagNumber, passengerID, weight, status, currentLocationID)
VALUES
('BG10001', 'PA001', 23.50, 'In Transit', 'L004'),
('BG10002', 'PA002', 18.20, 'Checked In', 'L003'),
('BG10003', 'PA003', 25.70, 'In Transit', 'L004'),
('BG10004', 'PA004', 16.40, 'Delivered', 'L005'),
('BG10005', 'PA005', 21.30, 'Lost', 'L003');


-- 11. BAGGAGE FLIGHT


INSERT INTO BaggageFlight
(baggageTagNumber, flightID, sequenceNumber)
VALUES
('BG10001', 'F001', 1),
('BG10001', 'F002', 2),
('BG10002', 'F003', 1),
('BG10003', 'F004', 1),
('BG10004', 'F005', 1),
('BG10005', 'F001', 1);


-- 12. TRACKING RECORD


INSERT INTO TrackingRecord
(trackingID, baggageTagNumber, updaterID, flightID,
timestamp, status, locationID, remarks)
VALUES
('T001', 'BG10001', 'P002', 'F001',
 '2026-09-15 15:20:00', 'Checked In', 'L001',
 'Baggage accepted at check-in'),

('T002', 'BG10001', 'P004', 'F001',
 '2026-09-15 16:10:00', 'Sorted', 'L003',
 'Baggage moved to sorting area'),

('T003', 'BG10001', 'P004', 'F001',
 '2026-09-15 17:30:00', 'Loaded', 'L003',
 'Baggage loaded for flight'),

('T004', 'BG10001', 'P004', 'F002',
 '2026-09-16 02:45:00', 'In Transit', 'L004',
 'Baggage transferred at Dubai'),

('T005', 'BG10004', 'P004', 'F005',
 '2026-09-19 06:45:00', 'Delivered', 'L005',
 'Passenger collected baggage'),

('T006', 'BG10002', 'P002', 'F003',
 '2026-09-17 17:20:00', 'Checked In', 'L001',
 'Baggage accepted at check-in'),

('T007', 'BG10003', 'P002', 'F004',
 '2026-09-18 00:30:00', 'Loaded', 'L004',
 'Baggage loaded for transfer'),

('T008', 'BG10005', 'P002', 'F001',
 '2026-09-15 16:00:00', 'Checked In', 'L001',
 'Baggage accepted at check-in');


-- 13. LOST BAGGAGE REPORT


INSERT INTO LostBaggageReport
(reportID, tagNumber, passengerID, officerID,
reason, status, reportDate, resolvedDate)
VALUES
('LR001', 'BG10005', 'PA005', 'E003',
 'Baggage not received at destination',
 'Open',
 '2026-09-20 08:30:00', NULL),

('LR002', 'BG10002', 'PA002', 'E003',
 'Baggage missing from baggage belt',
 'Under Investigation',
 '2026-09-18 10:00:00', NULL),

('LR003', 'BG10003', 'PA003', 'E003',
 'Baggage delayed during transfer',
 'Open',
 '2026-09-19 09:15:00', NULL),

('LR004', 'BG10001', 'PA001', 'E003',
 'Baggage temporarily misplaced',
 'Resolved',
 '2026-09-17 11:00:00', '2026-09-17 16:30:00'),

('LR005', 'BG10004', 'PA004', 'E003',
 'Baggage reported damaged',
 'Resolved',
 '2026-09-20 14:00:00', '2026-09-21 10:00:00');