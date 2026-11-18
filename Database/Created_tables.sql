CREATE DATABASE Baggagems;
USE Baggagems;

-- 1. PERSON

CREATE TABLE Person (
    personID VARCHAR(10) PRIMARY KEY,
    username VARCHAR(50),
    passwordHash VARCHAR(255),
    name VARCHAR(100),
    address VARCHAR(255),
    contactNo VARCHAR(20),
    accountStatus VARCHAR(20) DEFAULT 'Active'
);

-- 2. ROLE

CREATE TABLE Role (
    roleID VARCHAR(10) PRIMARY KEY,
    roleName VARCHAR(50)
);

-- 3. EMPLOYEE

CREATE TABLE Employee (
    employeeID VARCHAR(10) PRIMARY KEY,
    personID VARCHAR(10),
    roleID VARCHAR(10),
    shift VARCHAR(30),

    FOREIGN KEY (personID)
        REFERENCES Person(personID),

    FOREIGN KEY (roleID)
        REFERENCES Role(roleID)
);

-- 4. PASSENGER

CREATE TABLE Passenger (
    passengerID VARCHAR(10) PRIMARY KEY,
    personID VARCHAR(10),
    passportNumber VARCHAR(30),
    nationality VARCHAR(50),

    FOREIGN KEY (personID)
        REFERENCES Person(personID)
);

-- 5. AIRPORT

CREATE TABLE Airport (
    airportID VARCHAR(10) PRIMARY KEY,
    airportCode VARCHAR(10),
    airportName VARCHAR(100),
    city VARCHAR(50),
    country VARCHAR(50)
);

-- 6. AIRLINE

CREATE TABLE Airline (
    airlineID VARCHAR(10) PRIMARY KEY,
    airlineName VARCHAR(100),
    airlineCode VARCHAR(10)
);

-- 7. FLIGHT

CREATE TABLE Flight (
    flightID VARCHAR(10) PRIMARY KEY,
    flightNumber VARCHAR(20),
    airlineID VARCHAR(10),
    departureAirportID VARCHAR(10),
    arrivalAirportID VARCHAR(10),
    departureDate DATE,
    departureTime TIME,
    arrivalDate DATE,
    arrivalTime TIME,

    FOREIGN KEY (airlineID)
        REFERENCES Airline(airlineID),

    FOREIGN KEY (departureAirportID)
        REFERENCES Airport(airportID),

    FOREIGN KEY (arrivalAirportID)
        REFERENCES Airport(airportID)
);

-- 8. PASSENGER FLIGHT

CREATE TABLE PassengerFlight (
    passengerFlightID VARCHAR(10) PRIMARY KEY,
    passengerID VARCHAR(10),
    flightID VARCHAR(10),
    bookingReference VARCHAR(30),
    seatNumber VARCHAR(10),
    checkInStatus VARCHAR(30),

    FOREIGN KEY (passengerID)
        REFERENCES Passenger(passengerID),

    FOREIGN KEY (flightID)
        REFERENCES Flight(flightID)
);

-- 9. LOCATION

CREATE TABLE Location (
    locationID VARCHAR(10) PRIMARY KEY,
    locationCode VARCHAR(20),
    locationName VARCHAR(100),
    airportID VARCHAR(10),

    FOREIGN KEY (airportID)
        REFERENCES Airport(airportID)
);

-- 10. BAGGAGE

CREATE TABLE Baggage (
    tagNumber VARCHAR(30) PRIMARY KEY,
    passengerID VARCHAR(10),
    weight DECIMAL(6,2),
    status VARCHAR(30),
    currentLocationID VARCHAR(10),

    FOREIGN KEY (passengerID)
        REFERENCES Passenger(passengerID),

    FOREIGN KEY (currentLocationID)
        REFERENCES Location(locationID)
);

-- 11. BAGGAGE FLIGHT

CREATE TABLE BaggageFlight (
    baggageTagNumber VARCHAR(30),
    flightID VARCHAR(10),
    sequenceNumber INT,

    PRIMARY KEY (baggageTagNumber, flightID),

    FOREIGN KEY (baggageTagNumber)
        REFERENCES Baggage(tagNumber),

    FOREIGN KEY (flightID)
        REFERENCES Flight(flightID)
);

-- 12. TRACKING RECORD

CREATE TABLE TrackingRecord (
    trackingID VARCHAR(10) PRIMARY KEY,
    baggageTagNumber VARCHAR(30),
    updaterID VARCHAR(10),
    flightID VARCHAR(10),
    timestamp DATETIME,
    status VARCHAR(30),
    locationID VARCHAR(10),
    remarks VARCHAR(255),

    FOREIGN KEY (baggageTagNumber)
        REFERENCES Baggage(tagNumber),

    FOREIGN KEY (updaterID)
        REFERENCES Person(personID),

    FOREIGN KEY (flightID)
        REFERENCES Flight(flightID),

    FOREIGN KEY (locationID)
        REFERENCES Location(locationID)
);

-- 13. LOST BAGGAGE REPORT

CREATE TABLE LostBaggageReport (
    reportID VARCHAR(10) PRIMARY KEY,
    tagNumber VARCHAR(30),
    passengerID VARCHAR(10),
    officerID VARCHAR(10),
    reason VARCHAR(255),
    status VARCHAR(30),
    reportDate DATETIME,
    resolvedDate DATETIME,

    FOREIGN KEY (tagNumber)
        REFERENCES Baggage(tagNumber),

    FOREIGN KEY (passengerID)
        REFERENCES Passenger(passengerID),

    FOREIGN KEY (officerID)
        REFERENCES Employee(employeeID)
);
