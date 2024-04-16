CREATE TABLE Courses (
    course_id INT,
    department VARCHAR(50),
    course_number VARCHAR(10),
    course_name VARCHAR(100),
    semester VARCHAR(20),
    year INT,
    course_id SERIAL PRIMARY KEY
);

CREATE TABLE Assignments (
    assignment_id INT,
    course_id INT(5),
    category VARCHAR(50),
    weight DECIMAL(5, 2),
    assignment_name VARCHAR(100),
    FOREIGN KEY (course_id) REFERENCES Courses(course_id),
    assignment_id SERIAL PRIMARY KEY
);

CREATE TABLE Students (
    student_id INT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    student_id SERIAL PRIMARY KEY
);

CREATE TABLE Grades (
    grade_id INT,
    student_id INT,
    assignment_id INT,
    score DECIMAL(5, 2),
    FOREIGN KEY (student_id) REFERENCES Students(student_id),
    FOREIGN KEY (assignment_id) REFERENCES Assignments(assignment_id),
    grade_id SERIAL PRIMARY KEY
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
(03032573, 'Bernell', 'Deamon'),
(03052583, 'Jane', 'Smith'),
(03062173, 'Jichael', 'Mohnson'),
(03024769, 'Davion', 'Mitchell'),
(03018590, 'Ava', 'Phillips'),
(03013847, 'Noah', 'Kelly'),
(03056739, 'Kendrick', 'Carter'),
(03057602, 'Edward', 'Reese'),
(03032573, 'Evan', 'Ibhawoa');

INSERT INTO Grades (student_id, course_id, assignment_id, score) VALUES
(1, 1, 85),
(1, 2, 85),
(1, 3, 92),
(1, 4, 88),
(2, 1, 9),
(2, 2, 88),
(2, 3, 95),
(2, 4, 90),
(3, 5, 85),
(3, 6, 80);
