use Academic_Database_System


SELECT p.P_number, p.Sponsor_name, prof.name AS Professor_Manager_Name
FROM Project p
JOIN Professor prof ON p.P_SSN = prof.P_SSN;

-- names of Students in each  Department
SELECT s.name AS Student_Name, d.name AS Department_Name
FROM Student s
JOIN Department d ON s.D_number = d.D_number;

-- number of Students per Department
SELECT d.name AS Department_Name, COUNT(*) AS Student_Count
FROM Department d
JOIN Student s ON d.D_number = s.D_number
GROUP BY d.name;