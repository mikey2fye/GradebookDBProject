DROP TABLE Courses;
DROP TABLE Assignments;
DROP TABLE Students;
DROP TABLE Grades; 

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
    student_id VARCHAR(50),
    first_name VARCHAR(50),
    last_name VARCHAR(50)
    -- student_id SERIAL PRIMARY KEY
);

CREATE TABLE Grades (
    student_id VARCHAR(50),
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
(14216, 'Attendance', 10, '4/16 Attendance'),
(14216, 'Homework', 10, 'Homework 1'),
(14216, 'Homework', 10, 'Homework 2'),
(14216, 'Homework', 10, 'Homework 3'),
(14216, 'Tests', 40, 'Midterm Exam'),
(14216, 'Quizzes', 10, 'Quiz 1'),
(14216, 'Quizzes', 10, 'Quiz 2'),
(14150, 'Homework', 10, 'Homework 1'),
(14150, 'Homework', 10, 'Homework 2'),
(14150, 'Homework', 10, 'Homework 3'),
(14150, 'Tests', 30, 'Midterm Exam'),
(14150, 'Tests', 30, 'Final Exam'),
(17814, 'Participation', 5, '4/16 Class Participation'),
(17814, 'Quizzes', 10, 'Quiz 1'),
(17814, 'Quizzes', 10, 'Quiz 2'),
(17814, 'Tests', 40, 'Midterm Exam'),
(17814, 'Quizzes', 10, 'Quiz 3'),
(17814, 'Tests', 65, 'Final Exam');

INSERT INTO Students (student_id, first_name, last_name) VALUES
('@03034572', 'John', 'Doe'),
('@03032583', 'Bernell', 'Deamon'),
('@03032679', 'Jane', 'Smith'),
('@03064576', 'Jichael', 'Mohnson'),
('@03024769', 'Qavion', 'Mitchell'),
('@03018590', 'Ava', 'Phillips'),
('@03013847', 'Noah', 'Kelly'),
('@03056739', 'Kendra', 'Carter'),
('@03057602', 'Edward', 'Reese'),
('@03032571', 'Eva', 'Quawoa');

INSERT INTO Grades (student_id, course_id, assignment_name, score) VALUES
('@03034572', 14216, 'Homework 1', 90),
('@03032583', 14216, 'Homework 1', 98),
('@03032679', 14216, 'Homework 1', 88),
('@03064576', 14216, 'Homework 1', 62),
('@03034572', 14216, 'Homework 2', 100),
('@03032583', 14216, 'Homework 2', 80),
('@03032679', 14216, 'Homework 2', 65),
('@03034576', 14216, 'Homework 2', 82),
('@03034572', 14216, 'Homework 3', 85),
('@03032583', 14216, 'Homework 3', 70),
('@03032679', 14216, 'Homework 3', 80),
('@03034576', 14216, 'Homework 3', 92),
('@03034572', 14216, 'Quiz 1', 100),
('@03032583', 14216, 'Quiz 1', 70),
('@03032679', 14216, 'Quiz 1', 40),
('@03064576', 14216, 'Quiz 1', 80),
('@03034572', 14216, 'Midterm Exam', 69),
('@03032583', 14216, 'Midterm Exam', 76),
('@03032679', 14216, 'Midterm Exam', 84),
('@03064576', 14216, 'Midterm Exam', 92),
('@03034572', 14216, 'Quiz 2', 90),
('@03032583', 14216, 'Quiz 2', 60),
('@03032679', 14216, 'Quiz 2', 80),
('@03064576', 14216, 'Quiz 2', 100),
('@03034572', 14216, '4/16 Attendance', 100),
('@03032583', 14216, '4/16 Attendance', 100),
('@03032679', 14216, '4/16 Attendance', 100),
('@03064576', 14216, '4/16 Attendance', 100),
('@03032679', 14150, 'Homework 1', 100),
('@03062173', 14150, 'Homework 1', 80),
('@03024769', 14150, 'Homework 1', 79),
('@03018590', 14150, 'Homework 1', 90),
('@03013847', 14150, 'Homework 1', 75),
('@03034572', 14150, 'Homework 1', 85),
('@03032679', 14150, 'Homework 2', 84),
('@03062173', 14150, 'Homework 2', 78),
('@03024769', 14150, 'Homework 2', 91),
('@03018590', 14150, 'Homework 2', 96),
('@03013847', 14150, 'Homework 2', 72),
('@03034572', 14150, 'Homework 2', 87),
('@03032679', 14150, 'Midterm Exam', 70),
('@03062173', 14150, 'Midterm Exam', 70),
('@03024769', 14150, 'Midterm Exam', 77),
('@03018590', 14150, 'Midterm Exam', 64),
('@03013847', 14150, 'Midterm Exam', 80),
('@03034572', 14150, 'Midterm Exam', 80),
('@03032679', 14150, 'Homework 3', 97),
('@03062173', 14150, 'Homework 3', 81),
('@03024769', 14150, 'Homework 3', 88),
('@03018590', 14150, 'Homework 3', 83),
('@03013847', 14150, 'Homework 3', 79),
('@03034572', 14150, 'Homework 3', 93),
('@03032679', 14150, 'Final Exam', 70),
('@03062173', 14150, 'Final Exam', 70),
('@03024769', 14150, 'Final Exam', 77),
('@03018590', 14150, 'Final Exam', 64),
('@03013847', 14150, 'Final Exam', 80),
('@03034572', 14150, 'Final Exam', 80),
('@03056739', 17814, '4/16 Class Participation', 100),
('@03057602', 17814, '4/16 Class Participation', 50),
('@03032571', 17814, '4/16 Class Participation', 100),
('@03034576', 17814, '4/16 Class Participation', 100),
('@03034572', 17814, '4/16 Class Participation', 50),
('@03013847', 17814, '4/16 Class Participation', 100),
('@03056739', 17814, 'Quiz 1', 60),
('@03057602', 17814, 'Quiz 1', 100),
('@03032571', 17814, 'Quiz 1', 80),
('@03034576', 17814, 'Quiz 1', 20),
('@03034572', 17814, 'Quiz 1', 80),
('@03013847', 17814, 'Quiz 1', 100),
('@03056739', 17814, 'Quiz 2', 80),
('@03057602', 17814, 'Quiz 2', 70),
('@03032571', 17814, 'Quiz 2', 90),
('@03034576', 17814, 'Quiz 2', 40),
('@03034572', 17814, 'Quiz 2', 0),
('@03013847', 17814, 'Quiz 2', 100),
('@03056739', 17814, 'Midterm Exam', 80),
('@03057602', 17814, 'Midterm Exam', 70),
('@03032571', 17814, 'Midterm Exam', 85),
('@03034576', 17814, 'Midterm Exam', 75),
('@03034572', 17814, 'Midterm Exam', 60),
('@03013847', 17814, 'Midterm Exam', 88),
('@03056739', 17814, 'Quiz 3', 90),
('@03057602', 17814, 'Quiz 3', 60),
('@03032571', 17814, 'Quiz 3', 100),
('@03034576', 17814, 'Quiz 3', 70),
('@03034572', 17814, 'Quiz 3', 80),
('@03013847', 17814, 'Quiz 3', 90),
('@03056739', 17814, 'Final Exam', 73),
('@03057602', 17814, 'Final Exam', 86),
('@03032571', 17814, 'Final Exam', 92),
('@03034576', 17814, 'Final Exam', 78),
('@03034572', 17814, 'Final Exam', 69),
('@03013847', 17814, 'Final Exam', 81);

-- DESCRIBE Courses;
-- DESCRIBE Assignments;
-- DESCRIBE Students;
-- DESCRIBE Grades;

SELECT * FROM Courses;
SELECT * FROM Assignments;
SELECT * FROM Students;
SELECT * FROM Grades;
