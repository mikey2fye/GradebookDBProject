DROP PROCEDURE IF EXISTS AddPointsToAssignmentForStudentsWithQLastName;

DELIMITER //

CREATE PROCEDURE AddPointsToAssignmentForStudentsWithQLastName(
    IN assignment_name_param VARCHAR(100)
)
BEGIN
    UPDATE Grades
    SET score = score + 2
    WHERE assignment_name = assignment_name_param
    AND student_id IN (SELECT student_id FROM Students WHERE last_name LIKE '%Q%');
END //

DELIMITER ;


CALL AddPointsToAssignmentForStudentsWithQLastName('Quiz 1');
