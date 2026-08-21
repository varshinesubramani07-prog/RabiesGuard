CREATE DATABASE RabiesGuard;

USE RabiesGuard;

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

CREATE TABLE BiteReports (
    ReportID INT PRIMARY KEY IDENTITY(1,1),
    DogID INT,
    CitizenName VARCHAR(100),
    Phone VARCHAR(15),
    BiteDate DATE,
    Location VARCHAR(200),
    FOREIGN KEY (DogID) REFERENCES Dogs(DogID)
);

CREATE TABLE Wards (
    WardID INT PRIMARY KEY,
    WardName VARCHAR(100),
    DogCount INT DEFAULT 0,
    VaccinatedDogs INT DEFAULT 0,
    BiteCases INT DEFAULT 0
);