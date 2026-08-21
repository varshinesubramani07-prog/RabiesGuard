CREATE DATABASE RabiesGuard;

USE RabiesGuard;


-- Dog information
CREATE TABLE Dogs (
    DogID INT PRIMARY KEY IDENTITY(1,1),
    RFID VARCHAR(50) UNIQUE,
    QRCode VARCHAR(100),
    WardID INT,
    Vaccinated BIT DEFAULT 0,
    Sterilized BIT DEFAULT 0,
    VaccinationDate DATE,
    Location VARCHAR(200)
);


-- Ward information
CREATE TABLE Wards (
    WardID INT PRIMARY KEY,
    WardName VARCHAR(100),
    DogCount INT DEFAULT 0,
    VaccinatedDogs INT DEFAULT 0,
    BiteCases INT DEFAULT 0
);


-- Citizen bite reports
CREATE TABLE BiteReports (
    ReportID INT PRIMARY KEY IDENTITY(1,1),
    DogID INT NULL,
    CitizenName VARCHAR(100),
    Phone VARCHAR(15),
    BiteDate DATE,
    Location VARCHAR(200),

    FOREIGN KEY (DogID)
        REFERENCES Dogs(DogID)
);


-- PEP vaccination schedule
CREATE TABLE PEPSchedule (
    PEPID INT PRIMARY KEY IDENTITY(1,1),
    ReportID INT,
    DoseName VARCHAR(20),
    DueDate DATE,
    Status VARCHAR(20) DEFAULT 'Pending',

    FOREIGN KEY (ReportID)
        REFERENCES BiteReports(ReportID)
);