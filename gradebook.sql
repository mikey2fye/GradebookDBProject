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

