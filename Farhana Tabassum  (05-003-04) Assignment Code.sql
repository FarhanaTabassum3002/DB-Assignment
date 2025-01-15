-- Create Customer table
CREATE TABLE Customer (
    Customer_id INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100) NOT NULL,
    Address VARCHAR(255),
    Phone_number VARCHAR(15),
    Email VARCHAR(100) UNIQUE
);

-- Create Car table
CREATE TABLE Car (
    Car_ID INT PRIMARY KEY AUTO_INCREMENT,
    License_Plate VARCHAR(20) UNIQUE NOT NULL,
    Make VARCHAR(50),
    Model VARCHAR(50),
    Year YEAR,
    CustomerID INT,
    FOREIGN KEY (CustomerID) REFERENCES Customer(Customer_id)
);

-- Create Accident table
CREATE TABLE Accident (
    Accident_ID INT PRIMARY KEY AUTO_INCREMENT,
    Location VARCHAR(255),
    Date DATE NOT NULL,
    Description TEXT,
    Car_ID INT,
    FOREIGN KEY (Car_ID) REFERENCES Car(Car_ID)
);

-- Create Insurance_Policy table
CREATE TABLE Insurance_Policy (
    Policy_ID INT PRIMARY KEY AUTO_INCREMENT,
    Policy_Number VARCHAR(50) UNIQUE


-- Create Student table
CREATE TABLE Student (
    Student_id INT PRIMARY KEY AUTO_INCREMENT,
    First_name VARCHAR(50) NOT NULL,
    Last_name VARCHAR(50) NOT NULL,
    Date_of_birth DATE,
    Gender ENUM('Male', 'Female', 'Other'),
    Phone_number VARCHAR(20),
    Email VARCHAR(100) UNIQUE,
    Department_id INT,
    Enrollment_date DATE,
    FOREIGN KEY (Department_id) REFERENCES Department(Department_id)
);

-- Create Department table
CREATE TABLE Department (
    Department_id INT PRIMARY KEY AUTO_INCREMENT,
    Department_name VARCHAR(100) NOT NULL,
    Head_of_department INT,
    FOREIGN KEY (Head_of_department) REFERENCES Faculty(Faculty_id)
);

-- Create Course table
CREATE TABLE Course (
    Course_id INT PRIMARY KEY AUTO_INCREMENT,
    Course_name VARCHAR(100) NOT NULL,
    Credits INT NOT NULL,
    Course_description TEXT,
    Department_id INT,
    FOREIGN KEY (Department_id) REFERENCES Department(Department_id)
);

-- Create Faculty table
CREATE TABLE Faculty (
    Faculty_id INT PRIMARY KEY AUTO_INCREMENT,
    First_name VARCHAR(50) NOT NULL,
    Last_name VARCHAR(50) NOT NULL,
    Email VARCHAR(100) UNIQUE,
    Phone_number VARCHAR(20),
    Department_id INT,
    Joining_date DATE,
    FOREIGN KEY (Department_id) REFERENCES Department(Department_id)
);

-- Create Class table
CREATE TABLE Class (
    Class_id INT PRIMARY KEY AUTO_INCREMENT,
    Faculty_id INT,
    Course_id INT,
    Semester ENUM('Fall', 'Spring', 'Summer'),
    Year YEAR N


-- Create Customer table
CREATE TABLE Customer (
    Customer_id INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100) NOT NULL,
    Address VARCHAR(255),
    Phone_number VARCHAR(15),
    Email VARCHAR(100) UNIQUE
);

-- Create Car table
CREATE TABLE Car (
    Car_ID INT PRIMARY KEY AUTO_INCREMENT,
    License_Plate VARCHAR(20) UNIQUE NOT NULL,
    Make VARCHAR(50),
    Model VARCHAR(50),
    Year YEAR,
    CustomerID INT,
    FOREIGN KEY (CustomerID) REFERENCES Customer(Customer_id)
);

-- Create Accident table
CREATE TABLE Accident (
    Accident_ID INT PRIMARY KEY AUTO_INCREMENT,
    Location VARCHAR(255),
    Date DATE NOT NULL,
    Description TEXT,
    Car_ID INT,
    FOREIGN KEY (Car_ID) REFERENCES Car(Car_ID)
);

-- Create Insurance_Policy table
CREATE TABLE Insurance_Policy (
    Policy_ID INT PRIMARY KEY AUTO_INCREMENT,
    Policy_Number VARCHAR(50) UNIQUE
