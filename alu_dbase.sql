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
-- (Wezzie's CREATE TABLE goes here)

-- Abigail: Faculty

CREATE TABLE Faculty (
    faculty_id INT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100),
    department VARCHAR(50)
);

-- Arnold: Students
-- (Arnold's CREATE TABLE goes here)

-- Acquah: Courses
-- (Acquah's CREATE TABLE goes here)

-- Yom: Extra_Curricular_Activities
-- (Yom's CREATE TABLE goes here)

-- Michael: Student_Courses, Student_Activities (junction tables)
-- (Michael's CREATE TABLE statements go here)


-- =========================================================
-- INSERT STATEMENTS
-- =========================================================

-- Abigail: Faculty

INSERT INTO Faculty (faculty_id, name, email, department)
VALUES
(1, 'Dr. Kwame Mensah', 'kmensah@alu.edu', 'Computer Science'),
(2, 'Dr. Sarah Whitfield', 'swhitfield@alu.edu', 'Mathematics'),
(3, 'Mr. John Osei', 'josei@alu.edu', 'Business'),
(4, 'Dr. Grace Adjei', 'gadjei@alu.edu', 'Engineering'),
(5, 'Ms. Emily Carter', 'ecarter@alu.edu', 'Health Sciences'),
(6, 'Dr. Samuel Tetteh', 'stetteh@alu.edu', 'Physics');

-- =========================================================
-- INDIVIDUAL UPDATE / DELETE / SELECT (labeled by member)
-- =========================================================

-- Abigail: Faculty

UPDATE Faculty
SET department = 'Software Engineering'
WHERE faculty_id = 1;

DELETE FROM Faculty
WHERE faculty_id = 5;

SELECT * FROM Faculty
WHERE department = 'Mathematics';

-- =========================================================
-- GROUP TASKS: JOIN QUERIES + AGGREGATE QUERY
-- =========================================================
