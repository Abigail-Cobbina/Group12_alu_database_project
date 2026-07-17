# ALU School Database Management System

This repository contains the Group 12 submission for the **Play with SQL Basics (RDBMS) – Peer Group Engagement Activity** 

The project demonstrates the design and implementation of a relational database for a school management system using **MySQL**. It applies core database concepts such as database design, normalization, primary and foreign keys, data manipulation, and SQL queries to model how different entities within a school interact.

The database consists of seven related tables that represent students, faculty members, classrooms, courses, extracurricular activities, and the many-to-many relationships between students and courses, as well as students and extracurricular activities.

---
## Project Objectives

The aim of this project was to:

- Design a normalized relational database.
- Create tables using SQL Data Definition Language (DDL).
- Define primary and foreign key constraints.
- Insert, update, delete, and retrieve data using SQL.
- Build one-to-many and many-to-many relationships.
- Write JOIN and aggregate queries to retrieve meaningful information.
- Practice collaborative software development using Git and GitHub.

---
## Database Structure

The database contains the following tables:

- **Students** – Stores student information.
- **Classroom** – Stores classroom details.
- **Faculty** – Stores faculty information.
- **Courses** – Stores course information and links courses to faculty and classrooms.
- **Extra_Curricular_Activities** – Stores school clubs and extracurricular activities.
- **Student_Courses** – Junction table connecting students and courses.
- **Student_Activities** – Junction table connecting students and extracurricular activities.

This structure ensures data integrity while reducing redundancy through normalization.

---
##  Repository Contents

This repository includes:

- `README.md` – Project documentation.
- `alu_dbase.sql` – Complete SQL script containing:
  - Database creation
  - Table creation
  - Primary and foreign key constraints
  - Sample data insertion
  - UPDATE, DELETE, and SELECT statements
  - JOIN queries
  - Aggregate query
  - Normalization discussion

---
##  Technologies Used

- MySQL
- SQL
- Git
- GitHub

---
## Team Collaboration

The project was completed collaboratively, with each team member responsible for designing and implementing specific database tables and SQL operations. Individual contributions were tracked through Git commits, while the final database was integrated into a single SQL script for submission.

---
## Learning Outcomes

Through this project, we gained practical experience in relational database design, SQL programming, database normalization, managing relationships using foreign keys, writing complex JOIN queries, and collaborating effectively using GitHub version control.

---
## Contributors

**Group 12** 

- Arnold
- Wezzie
- Abigail
- Acquah
- Michael
- Yom

---

## License

This project was developed for educational purposes as part of the **Play with SQL Basics (RDBMS) – Peer Group Engagement Activity** at the **African Leadership University (ALU)**.
