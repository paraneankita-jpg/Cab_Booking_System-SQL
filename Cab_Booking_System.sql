create database cab_booking_system;
use cab_booking_system;


CREATE TABLE Customers ( 
    CustomerID INT PRIMARY KEY, 
    Name VARCHAR(100), 
    Email VARCHAR(100), 
    RegistrationDate DATE 
);