create database cab_booking_system;
use cab_booking_system;

#   Customers table

CREATE TABLE Customers ( 
    CustomerID INT PRIMARY KEY, 
    Name VARCHAR(100), 
    Email VARCHAR(100), 
    RegistrationDate DATE 
);

#  Drivers table

CREATE TABLE Drivers (
    DriverID INT PRIMARY KEY,
    Name VARCHAR (100),
    joindate DATE
    );

    # cabs table

CREATE TABLE Cabs (
    CabID INT PRIMARY KEY,
    DriverID INT,
    VehicleType VARCHAR(20),
    plateNumber VARCHAR(20),
    FOREIGN KEY (DriverID) REFERENCES Drivers(DriverID)
);

# Bookings table

CREATE TABLE Bookings (
    BookingID INT PRIMARY KEY,
    CustomerID INT,
    CabID INT,
    BokkingDate DATETIME,
    PickupLocation VARCHAR(100),
    DropoffLocation VARCHAR(100),
    BookingTime DATETIME,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    FOREIGN KEY (CabID) REFERENCES Cabs(CabID)
);
#TripDetails table

CREATE TABLE TripDetails (
    TripID INT PRIMARY KEY,
    BookingID INT,
    StartTime DATETIME,
    EndTime DATETIME,
    Distance FLOAT,
    Fare FLOAT,
    FOREIGN KEY (BookingID) REFERENCES Bookings(BookingID)
);

#Feedback table

CREATE TABLE Feedback (
    FeedbackID INT PRIMARY KEY,
    BookingID INT,
    Rating INT,
    Comments TEXT,
    FeedbackDate DATE,
    FOREIGN KEY (BookingID) REFERENCES Bookings(BookingID)
);