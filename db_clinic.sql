create database clinic;
use clinic;


-- Users Table (Front Desk)
CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(100) NOT NULL,
    password VARCHAR(100) NOT NULL
);

-- Doctors Table
CREATE TABLE doctors (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    specialization VARCHAR(100),
    gender VARCHAR(10),
    location VARCHAR(100),
    availableTimes TEXT -- JSON string
);

-- Appointments Table
CREATE TABLE appointments (
    id INT AUTO_INCREMENT PRIMARY KEY,
    patientName VARCHAR(100),
    time VARCHAR(50),
    status VARCHAR(50),
    doctor_id INT,
    FOREIGN KEY (doctor_id) REFERENCES doctors(id)
);

-- Queue Table
CREATE TABLE queue_entry (
    id INT AUTO_INCREMENT PRIMARY KEY,
    patientName VARCHAR(100),
    queueNumber INT,
    priority BOOLEAN DEFAULT FALSE,
    status VARCHAR(50)
);
