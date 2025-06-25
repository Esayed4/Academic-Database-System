Create database Academic_Database_System
use Academic_Database_System

CREATE TABLE  Professor (
    P_SSN VARCHAR(20) PRIMARY KEY,
    name VARCHAR(100),
    age INT,
    research_capacity VARCHAR(100),
    rank VARCHAR(50)
);


CREATE TABLE  Project (
    P_number INT PRIMARY KEY,
    Sponsor_name VARCHAR(100),
    S_date DATE,
    E_date DATE,
    budget DECIMAL(10,2),
    P_SSN VARCHAR(20),  
    FOREIGN KEY (P_SSN) REFERENCES Professor(P_SSN)
);

CREATE TABLE  Department (
    D_number INT PRIMARY KEY,
    name VARCHAR(100),
    Main_office VARCHAR(100),
    P_SSN VARCHAR(20),   
    FOREIGN KEY (P_SSN) REFERENCES Professor(P_SSN)
);


CREATE TABLE Student (
    S_SSN VARCHAR(20) PRIMARY KEY,
    name VARCHAR(100),
    age INT,
    Degree_program VARCHAR(50),
    D_number INT,  -- FK to Department
    Advisor_SSN VARCHAR(20),  -- FK to Student
    FOREIGN KEY (D_number) REFERENCES Department(D_number),
    FOREIGN KEY (Advisor_SSN) REFERENCES Student(S_SSN)
);




CREATE TABLE  Department_Stuff (
    D_number INT,
    P_SSN VARCHAR(20),
    Working_time INT,
    PRIMARY KEY (D_number, P_SSN),
    FOREIGN KEY (D_number) REFERENCES Department(D_number),
    FOREIGN KEY (P_SSN) REFERENCES Professor(P_SSN)
);


CREATE TABLE  Student_Project (
    P_number INT,
    P_SSN VARCHAR(20),
    S_SSN VARCHAR(20),
    PRIMARY KEY (P_number, S_SSN),
    FOREIGN KEY (P_number) REFERENCES Project(P_number),
    FOREIGN KEY (P_SSN) REFERENCES Professor(P_SSN),
    FOREIGN KEY (S_SSN) REFERENCES Student(S_SSN)
);
