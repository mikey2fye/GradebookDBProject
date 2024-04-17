DROP PROCEDURE IF EXISTS ComputeFinalGradeForStudent;
DELIMITER //

CREATE PROCEDURE ComputeFinalGradeForStudent(
    IN student_id_param VARCHAR(50),
    IN course_id_param INT
)
BEGIN
    DECLARE total_score DECIMAL(5, 2);
    DECLARE final_grade DECIMAL(5, 2);
    DECLARE student_name VARCHAR(100);

    -- Get the student's name
    SELECT CONCAT(first_name, ' ', last_name) INTO student_name
    FROM Students
    WHERE student_id = student_id_param;

    -- Calculate the total weighted score for the student in the course
    SELECT SUM(g.score * a.weight / 100) INTO total_score
    FROM Grades g
    JOIN Assignments a ON g.assignment_name = a.assignment_name
    WHERE g.student_id = student_id_param
    AND g.course_id = course_id_param;

    -- Apply additional rules or considerations if needed (optional)

    -- Set the final grade
    SET final_grade = total_score;  -- Example: Final grade is the total score without any adjustments

    -- Return the student's name, ID, and final grade
    SELECT student_name AS Student_Name, student_id_param AS Student_ID, final_grade AS Final_Grade;
END //

DELIMITER ;

CALL ComputeFinalGradeForStudent('@03034572', 14216); -- Replace Student ID and Course ID
