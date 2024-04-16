CREATE TABLE IF NOT EXISTS Courses (
    course_id INT,
    department VARCHAR(50),
    course_number VARCHAR(10),
    course_name VARCHAR(100),
    semester VARCHAR(20),
    year INT,
    course_id SERIAL PRIMARY KEY
);

CREATE TABLE IF NOT EXISTS Assignments (
    assignment_id INT,
    course_id INT(5),
    category VARCHAR(50),
    weight DECIMAL(5, 2),
    assignment_name VARCHAR(100),
    FOREIGN KEY (course_id) REFERENCES Courses(course_id),
    assignment_id SERIAL PRIMARY KEY
);

CREATE TABLE IF NOT EXISTS Students (
    student_id INT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    student_id SERIAL PRIMARY KEY
);

CREATE TABLE IF NOT EXISTS Grades (
    grade_id SERIAL PRIMARY KEY,
    student_id INT,
    assignment_id INT,
    score DECIMAL(5, 2),
    FOREIGN KEY (student_id) REFERENCES Students(student_id),
    FOREIGN KEY (assignment_id) REFERENCES Assignments(assignment_id)
);

INSERT INTO Courses (department, course_id, course_number, course_name, semester, year) VALUES
('Computer Science', '14216', 'CSCI350', 'Structure of Program Language', 'Spring', '2024'),
('Computer Science', '14150', 'CSCI432', 'Database Systems', 'Spring', '2024'),	
('Computer Science' , '17814', 'CSCI454', 'Intro to Cyber Security II', 'Spring', '2024'),	
('Computer Science', 18107, 'CSCI482', 'Natural Language Processing', 'Spring', '2024'),	
('Computer Science', '13778', 'EGPP493', 'Bison Startup', 'Spring', '2024');

INSERT INTO Assignments (course_id, category, weight, assignment_name) VALUES
(18107, 'Attendance', 10, 'Class Attendance'),
(18107, 'Homework', 20, 'Homework 1'),
(18107, 'Tests', 50, 'Midterm Exam'),
(18107, 'Projects', 20, 'Group Project'),
(2, 'Homework', 30, 'Assignment 1'),
(2, 'Tests', 70, 'Midterm Exam');

INSERT INTO Students (student_id, first_name, last_name) VALUES
(03034572, 'John', 'Doe'),
(03032573, 'Bernell', 'Deamon'),
(03052583, 'Jane', 'Smith'),
(03062173, 'Jichael', 'Mohnson'),
(03032573, 'Evan', 'Ibhawoa');

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
