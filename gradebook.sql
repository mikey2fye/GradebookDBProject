CREATE TABLE Courses (
    course_id SERIAL PRIMARY KEY,
    department VARCHAR(50),
    course_number VARCHAR(10),
    course_name VARCHAR(100),
    semester VARCHAR(20),
    year INT
);

CREATE TABLE Assignments (
    assignment_id SERIAL PRIMARY KEY,
    course_id INT,
    category VARCHAR(50),
    weight DECIMAL(5, 2),
    assignment_name VARCHAR(100),
    FOREIGN KEY (course_id) REFERENCES Courses(course_id)
);

CREATE TABLE Students (
    student_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50)
);

CREATE TABLE Grades (
    grade_id SERIAL PRIMARY KEY,
    student_id INT,
    assignment_id INT,
    score DECIMAL(5, 2),
    FOREIGN KEY (student_id) REFERENCES Students(student_id),
    FOREIGN KEY (assignment_id) REFERENCES Assignments(assignment_id)
);

INSERT INTO Courses (department, course_number, course_name, semester, year) VALUES
('Computer Science', 'CSCI350', 'Structure of Program Language', 'Spring', '2024'),
('Computer Science', 'CSCI432', 'Database Systems', 'Spring', '2024'),	
('Computer Science' , 'CSCI454', 'Intro to Cyber Security II', 'Spring', '2024'),	
('Computer Science', 'CSCI482', 'Natural Language Processing', 'Spring', '2024'),	
('Computer Science', 'EGPP493',	'Bison Startup', 'Spring', '2024');

INSERT INTO Assignments (course_id, category, weight, assignment_name) VALUES
(18107, 'Attendance', 10, 'Class Attendance'),
(18107, 'Homework', 20, 'Homework 1'),
(18107, 'Tests', 50, 'Midterm Exam'),
(18107, 'Projects', 20, 'Group Project'),
(2, 'Homework', 30, 'Assignment 1'),
(2, 'Tests', 70, 'Midterm Exam');

INSERT INTO Students (first_name, last_name) VALUES
('John', 'Doe'),
('Pernell', 'Leamon'),
('Jane', 'Smith'),
('Michael', 'Johnson');

INSERT INTO Grades (student_id, assignment_id, score) VALUES
(1, 1, 8.5),
(1, 2, 85),
(1, 3, 92),
(1, 4, 88),
(2, 1, 9),
(2, 2, 88),
(2, 3, 95),
(2, 4, 90),
(3, 5, 85),
(3, 6, 80);
