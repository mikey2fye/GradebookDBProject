DROP PROCEDURE IF EXISTS AddPointsToAssignmentScoresInCourse;

DELIMITER //

CREATE PROCEDURE AddPointsToAssignmentScoresInCourse(
    IN course_id_param INT,
    IN assignment_name_param VARCHAR(100),
    IN points_to_add INT
)
BEGIN
    UPDATE Grades
    SET score = score + points_to_add
    WHERE assignment_name = assignment_name_param
    AND course_id = course_id_param;
END //

DELIMITER ;

CALL AddPointsToAssignmentScoresInCourse(14216, 'Homework 1', 2); -- Example call to add 2 points to each student's score on 'Homework 1' in course 14216
