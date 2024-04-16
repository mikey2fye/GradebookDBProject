DROP PROCEDURE IF EXISTS AddAssignmentToCourse;
DELIMITER //

CREATE PROCEDURE AddAssignmentToCourse(
    IN course_id_param INT,
    IN category_param VARCHAR(50),
    IN weight_param INT,
    IN assignment_name_param VARCHAR(100)
)
BEGIN
    INSERT INTO Assignments (course_id, category, weight, assignment_name)
    VALUES (course_id_param, category_param, weight_param, assignment_name_param);
END //

DELIMITER ;

CALL AddAssignmentToCourse(14216, 'Homework', 10, 'Homework 4'); -- Example call to add an assignment to course with ID 14216
