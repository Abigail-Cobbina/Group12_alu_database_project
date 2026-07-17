-- =========================================================
-- ALU Database Project - Group 12
-- Database: alu_dbase
-- =========================================================
-- NORMALIZATION PARAGRAPH (to be filled in by the group once
-- all tables and data exist)
-- =========================================================


-- =========================================================
-- DATABASE SETUP
-- =========================================================
CREATE DATABASE alu_dbase;
USE alu_dbase;


-- =========================================================
-- CREATE TABLE STATEMENTS (in dependency order)
-- =========================================================

-- Wezzie: Classroom
CREATE TABLE Classroom (
    classroom_id INT PRIMARY KEY,
    room_number VARCHAR(20) NOT NULL,
    building VARCHAR(50),
    capacity INT,
    room_type VARCHAR(30)
);

-- Abigail: Faculty
CREATE TABLE Faculty (
    faculty_id INT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100),
    department VARCHAR(50)
);

-- Arnold: Students
CREATE TABLE Students (
    student_id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100),
    classroom_id INT,
    enrollment_date DATE,
    FOREIGN KEY (classroom_id) REFERENCES Classroom(classroom_id)
);

-- Acquah: Courses
CREATE TABLE Courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(100) NOT NULL,
    credits INT,
    faculty_id INT,
    classroom_id INT,
    FOREIGN KEY (faculty_id) REFERENCES Faculty(faculty_id),
    FOREIGN KEY (classroom_id) REFERENCES Classroom(classroom_id)
);

-- Yom: Extra_Curricular_Activities
CREATE TABLE Extra_Curricular_Activities (
    activity_id INT PRIMARY KEY,
    activity_name VARCHAR(100) NOT NULL,
    activity_type VARCHAR(50),
    meeting_day VARCHAR(20),
    advisor_id INT,
    FOREIGN KEY (advisor_id) REFERENCES Faculty(faculty_id)
);

-- Michael: Student_Courses, Student_Activities (junction tables)
CREATE TABLE Student_Courses (
    student_id      INT NOT NULL,
    course_id       INT NOT NULL,
    enrollment_date DATE,
    PRIMARY KEY (student_id, course_id),
    FOREIGN KEY (student_id) REFERENCES Students(student_id),
    FOREIGN KEY (course_id) REFERENCES Courses(course_id)
);

CREATE TABLE Student_Activities (
    student_id  INT NOT NULL,
    activity_id INT NOT NULL,
    join_date   DATE,
    PRIMARY KEY (student_id, activity_id),
    FOREIGN KEY (student_id) REFERENCES Students(student_id),
    FOREIGN KEY (activity_id) REFERENCES Extra_Curricular_Activities(activity_id)
);

-- =========================================================
-- INSERT STATEMENTS
-- =========================================================

-- Wezzie: Classroom
INSERT INTO Classroom (classroom_id, room_number, building, capacity, room_type) VALUES
(1, '101', 'Main Block', 30, 'Lecture Hall'),
(2, '102', 'Main Block', 25, 'Lab'),
(3, '201', 'Science Wing', 40, 'Lecture Hall'),
(4, '202', 'Science Wing', 15, 'Seminar Room'),
(5, '301', 'Arts Building', 20, 'Studio');

-- Abigail: Faculty
INSERT INTO Faculty (faculty_id, name, email, department)
VALUES
(1, 'Dr. Kwame Mensah', 'kmensah@alu.edu', 'Computer Science'),
(2, 'Dr. Sarah Whitfield', 'swhitfield@alu.edu', 'Mathematics'),
(3, 'Mr. John Osei', 'josei@alu.edu', 'Business'),
(4, 'Dr. Grace Adjei', 'gadjei@alu.edu', 'Engineering'),
(5, 'Ms. Emily Carter', 'ecarter@alu.edu', 'Health Sciences'),
(6, 'Dr. Samuel Tetteh', 'stetteh@alu.edu', 'Physics');

-- Arnold: Students
INSERT INTO Students (student_id, name, email, classroom_id, enrollment_date)
VALUES
(1, 'Aline Uwase', 'auwase@alu.edu', 1, '2023-09-04'),
(2, 'Brian Otieno', 'botieno@alu.edu', 2, '2023-09-04'),
(3, 'Fatima Diallo', 'fdiallo@alu.edu', 3, '2024-01-15'),
(4, 'Chiamaka Okafor', 'cokafor@alu.edu', 1, '2023-09-04'),
(5, 'Kofi Boateng', 'kboateng@alu.edu', 4, '2024-01-15'),
(6, 'Tendai Moyo', 'tmoyo@alu.edu', 2, '2024-09-02');

-- Acquah: Courses
INSERT INTO Courses (course_id, course_name, credits, faculty_id, classroom_id)
VALUES
(1, 'Introduction to Databases', 3, 1, 2),
(2, 'Calculus I', 4, 2, 1),
(3, 'Business Fundamentals', 3, 3, 3),
(4, 'Engineering Design', 4, 4, 3),
(5, 'Physics for Engineers', 3, 6, 4),
(6, 'Introduction to Philosophy', 2, 3, 4);

-- Yom: Extra_Curricular_Activities
INSERT INTO Extra_Curricular_Activities (activity_id, activity_name, activity_type, meeting_day, advisor_id)
VALUES
(1, 'Chess Club', 'Academic', 'Monday', 1),
(2, 'Debate Team', 'Academic', 'Wednesday', 2),
(3, 'Soccer Club', 'Sports', 'Tuesday', 3),
(4, 'Drama Society', 'Arts', 'Thursday', 4),
(5, 'Robotics Club', 'STEM', 'Friday', 1);

--Micheal:student_course,Student_Activities
INSERT INTO Student_Courses (student_id, course_id, enrollment_date) VALUES
(1, 1, '2023-09-04'),
(1, 2, '2023-09-04'),
(2, 1, '2023-09-04'),
(3, 3, '2024-01-15'),
(4, 4, '2023-09-04'),
(5, 5, '2024-01-15');

INSERT INTO Student_Activities (student_id, activity_id, join_date) VALUES
(1, 1, '2023-09-10'),
(2, 2, '2023-09-10'),
(3, 3, '2024-01-20'),
(4, 4, '2023-09-10'),
(5, 5, '2024-01-20');


-- =========================================================
-- INDIVIDUAL UPDATE / DELETE / SELECT (labeled by member)
-- =========================================================

-- Wezzie: Classroom
UPDATE Classroom
SET capacity = 35
WHERE classroom_id = 1;

DELETE FROM Classroom
WHERE classroom_id = 5;

SELECT * FROM Classroom
WHERE capacity > 20;

-- Abigail: Faculty
UPDATE Faculty
SET department = 'Software Engineering'
WHERE faculty_id = 1;

DELETE FROM Faculty
WHERE faculty_id = 5;

SELECT * FROM Faculty
WHERE department = 'Mathematics';

-- Yom: Extra_Curricular_Activities
UPDATE Extra_Curricular_Activities
SET meeting_day = 'Saturday'
WHERE activity_id = 3;

DELETE FROM Extra_Curricular_Activities
WHERE activity_id = 4;

SELECT * FROM Extra_Curricular_Activities
WHERE activity_type = 'Academic';

SELECT * FROM Extra_Curricular_Activities;

-- Acquah: Courses
UPDATE Courses
SET credits = 4
WHERE course_id = 1;

DELETE FROM Courses
WHERE course_id = 6;

SELECT * FROM Courses
WHERE credits >= 4;

--Micheal: Student_Course,Student_Activitie
-- UPDATE: change a student's enrollment date in a course
UPDATE Student_Courses
SET enrollment_date = '2023-09-05'
WHERE student_id = 2 AND course_id = 1;

-- DELETE: remove a student's activity membership
DELETE FROM Student_Activities
WHERE student_id = 4 AND activity_id = 4;

-- SELECT with WHERE: find all courses a specific student is enrolled in
SELECT * FROM Student_Courses
WHERE student_id = 1;

-- =========================================================
-- GROUP TASKS: JOIN QUERIES + AGGREGATE QUERY
-- =========================================================
