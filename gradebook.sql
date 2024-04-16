CREATE TABLE Courses (
    department VARCHAR(50),
    course_id INT,
    course_number VARCHAR(10),
    course_name VARCHAR(100),
    semester VARCHAR(20),
    year INT
);

CREATE TABLE Assignments (
    course_id INT,
    category VARCHAR(50),
    weight INT,
    assignment_name VARCHAR(100)
    -- FOREIGN KEY (course_id) REFERENCES Courses(course_id)
);

CREATE TABLE Students (
    student_id INT,
    first_name VARCHAR(50),
    last_name VARCHAR(50)
    -- student_id SERIAL PRIMARY KEY
);

CREATE TABLE Grades (
    student_id INT,
    course_id INT,
    assignment_name VARCHAR(50),
    score DECIMAL(5, 2)
    -- FOREIGN KEY (student_id) REFERENCES Students(student_id),
--     FOREIGN KEY (course_id) REFERENCES Courses(course_id)
);

INSERT INTO Courses (department, course_id, course_number, course_name, semester, year) VALUES
('Computer Science', '14216', 'CSCI350', 'Structure of Program Language', 'Spring', '2024'),
('Computer Science', '14150', 'CSCI432', 'Database Systems', 'Spring', '2024'),	
('Computer Science' , '17814', 'CSCI454', 'Intro to Cyber Security II', 'Spring', '2024');

INSERT INTO Assignments (course_id, category, weight, assignment_name) VALUES
(14216, 'Attendance', 5, 'Class Attendance'),
(14216, 'Homework', 10, 'Homework 1'),
(14216, 'Homework', 10, 'Homework 2'),
(14216, 'Homework', 10, 'Homework 3'),
(14216, 'Tests', 45, 'Midterm Exam'),
(14216, 'Quizzes', 10, 'Quiz 1'),
(14216, 'Quizzes', 10, 'Quiz 2'),
(14150, 'Homework', 10, 'Homework 1'),
(14150, 'Homework', 10, 'Homework 2'),
(14150, 'Homework', 10, 'Homework 3'),
(14150, 'Tests', 30, 'Midterm Exam'),
(14150, 'Tests', 30, 'Final Exam'),
(17814, 'Tests', 40, 'Midterm'),
(17814, 'Quizzes', 10, 'Quiz 1'),
(17814, 'Quizzes', 10, 'Quiz 2'),
(17814, 'Quizzes', 10, 'Quiz 3'),
(17814, 'Participation', 5, 'Class Participation'),
(17814, 'Tests', 65, 'Final');

INSERT INTO Students (student_id, first_name, last_name) VALUES
(03034572, 'John', 'Doe'),
(03032583, 'Bernell', 'Deamon'),
(03032679, 'Jane', 'Smith'),
(03062173, 'Jichael', 'Mohnson'),
(03024769, 'Davion', 'Mitchell'),
(03018590, 'Ava', 'Phillips'),
(03013847, 'Noah', 'Kelly'),
(03056739, 'Kendrick', 'Carter'),
(03057602, 'Edward', 'Reese'),
(03032571, 'Evan', 'Ibhawoa');

INSERT INTO Grades (student_id, course_id, assignment_name, score) VALUES
(03034572, 14216, 'Homework 1', 90),
(03032583, 14216, 'Homework 1', 100),
(03032679, 14216, 'Homework 1', 88),
(03034576, 17814, 'Homework 1', 62),
(03032679, 14150, 'Midterm Exam', 70),
(03062173, 14150, 'Midterm Exam', 70),
(03024769, 14150, 'Midterm Exam', 77),
(03018590, 14150, 'Midterm Exam', 64),
(03013847, 14150, 'Midterm Exam', 80),
(03034572, 14150, 'Midterm Exam', 80),
(03056739, 17814, 'Quiz 1', 60),
(03057602, 17814, 'Quiz 1', 100),
(03032571, 17814, 'Quiz 1', 80),
(03034576, 17814, 'Quiz 1', 20),
(03034572, 17814, 'Quiz 1', 80),
(03013847, 14150, 'Quiz 1', 100);

DESCRIBE Courses;
DESCRIBE Assignments;
DESCRIBE Students;
DESCRIBE Grades;
