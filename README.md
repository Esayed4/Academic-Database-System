# Academic-Database-System

This project models a university's academic environment using database design principles. It captures key entities such as professors, graduate students, projects, and departments, and their interrelationships. The design follows a structured approach beginning with an ER model and converting it to a relational schema.

## 📌 Project Structure

- **ERD_Academic-Database-System.drawio**: ER diagram that models the university's academic structure.
- **ER_To_relational_mapping.drawio**: Conversion of the ER diagram to a relational schema.
- **DDL.sql**: SQL script to create the database schema (tables and constraints).
- **insertvalues.sql**: SQL script to populate the database with sample data.
- **DML.sql**: SQL script containing queries and data manipulation operations.

## 🧠 Problem Overview

The university database system includes:
- Professors with personal and academic details.
- Projects managed and worked on by professors and graduate students.
- Graduate students with advisors and project assignments.
- Departments managed by a chairman professor, with multiple associated faculty.
- Relationships between professors, students, departments, and projects, including time allocations, supervision, and project roles.

## 🧱 ER Model Highlights

- **Entities**:
  - `Professor` (SSN, name, age, rank, research specialty)
  - `Student` (SSN, name, age, degree program)
  - `Project` (project number, sponsor, start/end dates, budget)
  - `Department` (department number, name, main office)

- **Relationships**:
  - Professors `Manage` and `Work on` projects
  - Students `Work on` projects under `Supervision`
  - Professors `Work in` departments with `Working Time`
  - Students have one `Major` department
  - Professors `Run` departments as chairmen
  - Students have another student as an `Advisor`

## 🗃️ Relational Model Overview

Key tables derived from ER model:
- `Professor(P_SSN, name, age, research_specialty, rank)`
- `Student(S_SSN, name, age, degree_program, D_number, advisor_SSN)`
- `Project(P_number, sponsor_name, S_date, E_date, budget, P_SSN)`
- `Department(D_number, name, main_office, P_SSN)`
- `Department_Staff(D_number, P_SSN, working_time)`
- `Student_Project(P_number, P_SSN, S_SSN)`

## ✅ How to Use

1. Run `DDL.sql` to create the schema.
2. Execute `insertvalues.sql` to add initial data.
3. Use `DML.sql` to perform common queries, data updates, and manipulations.

## 🛠️ Technologies

- Microsoft SQL Server Managment Studio
- ER Modeling (via draw.io)
- Relational Mapping

## 📄 License

This project is intended for academic and educational use. Feel free to modify or adapt it for learning purposes.
