use Academic_Database_System


INSERT INTO Professor (P_SSN, name, age, research_capacity, rank) VALUES ('P1000', 'Sandra Wright', 38, 'Web designer', 'Assistant');
INSERT INTO Professor (P_SSN, name, age, research_capacity, rank) VALUES ('P1001', 'Joseph Kim', 50, 'Neurosurgeon', 'Assistant');
INSERT INTO Professor (P_SSN, name, age, research_capacity, rank) VALUES ('P1002', 'Virginia Evans', 63, 'Gaffer', 'Assistant');
INSERT INTO Professor (P_SSN, name, age, research_capacity, rank) VALUES ('P1003', 'Erin King', 62, 'Community development worker', 'Assistant');
INSERT INTO Professor (P_SSN, name, age, research_capacity, rank) VALUES ('P1004', 'George Ruiz', 54, 'Animal technologist', 'Full');

INSERT INTO Department (D_number, name, Main_office, P_SSN) VALUES (1, 'Department 1', '07635 Griffith Street\nPricechester, VA 96231', 'P1002');
INSERT INTO Department (D_number, name, Main_office, P_SSN) VALUES (2, 'Department 2', '0256 Samuel Plaza Suite 605\nEast Julieside, KY 52989', 'P1002');
INSERT INTO Department (D_number, name, Main_office, P_SSN) VALUES (3, 'Department 3', '5811 Woodard Bridge\nRochafurt, MA 42409', 'P1001');

INSERT INTO Project (P_number, Sponsor_name, S_date, E_date, budget, P_SSN) VALUES (1, 'Kirby-Sanchez', '2023-03-26', '2024-07-16', 108293.97, 'P1003');
INSERT INTO Project (P_number, Sponsor_name, S_date, E_date, budget, P_SSN) VALUES (2, 'Jackson-Schaefer', '2024-04-19', '2025-01-07', 139383.85, 'P1003');


INSERT INTO Student (S_SSN, name, age, Degree_program, D_number, Advisor_SSN) 
VALUES ('S2000', 'Alaa Ahmed', 22, 'Computer Science', 1, NULL);

INSERT INTO Student (S_SSN, name, age, Degree_program, D_number, Advisor_SSN) 
VALUES ('S2001', 'Mona Salah', 23, 'Information Systems', 1, 'S2000');

INSERT INTO Student (S_SSN, name, age, Degree_program, D_number, Advisor_SSN) 
VALUES ('S2002', 'Khaled Nabil', 21, 'Computer Engineering', 2, 'S2001');

INSERT INTO Student (S_SSN, name, age, Degree_program, D_number, Advisor_SSN) 
VALUES ('S2003', 'Hala Osama', 24, 'AI', 2, 'S2002');

INSERT INTO Student (S_SSN, name, age, Degree_program, D_number, Advisor_SSN) 
VALUES ('S2004', 'Youssef Amr', 20, 'Cyber Security', 3, 'S2003');


INSERT INTO Department_Stuff (D_number, P_SSN, Working_time) VALUES (1, 'P1000', 40);
INSERT INTO Department_Stuff (D_number, P_SSN, Working_time) VALUES (1, 'P1001', 30);
INSERT INTO Department_Stuff (D_number, P_SSN, Working_time) VALUES (2, 'P1002', 20);
INSERT INTO Department_Stuff (D_number, P_SSN, Working_time) VALUES (2, 'P1003', 25);
INSERT INTO Department_Stuff (D_number, P_SSN, Working_time) VALUES (3, 'P1004', 35);


INSERT INTO Student_Project (P_number, P_SSN, S_SSN) VALUES (1, 'P1003', 'S2000');
INSERT INTO Student_Project (P_number, P_SSN, S_SSN) VALUES (1, 'P1003', 'S2001');
INSERT INTO Student_Project (P_number, P_SSN, S_SSN) VALUES (2, 'P1003', 'S2002');
INSERT INTO Student_Project (P_number, P_SSN, S_SSN) VALUES (2, 'P1003', 'S2003');
INSERT INTO Student_Project (P_number, P_SSN, S_SSN) VALUES (2, 'P1003', 'S2004');
