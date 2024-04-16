DROP PROCEDURE IF EXISTS ComputeFinalGradeWithLowestDropped;

DELIMITER //

CREATE PROCEDURE ComputeFinalGradeWithLowestDropped(
    IN student_id_param VARCHAR(50),
    IN course_id_param INT,
    IN category_param VARCHAR(50)
)
BEGIN
    DECLARE total_score DECIMAL(5, 2);
    DECLARE final_grade DECIMAL(5, 2);
    DECLARE student_name VARCHAR(100);

    -- Get the student's name
    SELECT CONCAT(first_name, ' ', last_name) INTO student_name
    FROM Students
    WHERE student_id = student_id_param;

    -- Calculate the total weighted score for the student in the course with the lowest score dropped in the specified category
    SELECT SUM(score * weight / 100) INTO total_score
    FROM (
        SELECT g.score, a.weight, ROW_NUMBER() OVER (PARTITION BY a.category ORDER BY g.score ASC) AS row_num
        FROM Grades g
        JOIN Assignments a ON g.assignment_name = a.assignment_name
        WHERE g.student_id = student_id_param
        AND g.course_id = course_id_param
        AND a.category = category_param
    ) AS ranked_scores
    WHERE row_num > 1;
    SET final_grade = total_score;  
    
    SELECT student_name AS Student_Name, student_id_param AS Student_ID, final_grade AS Final_Grade;
END //

DELIMITER ;

CALL ComputeFinalGradeWithLowestDropped('@03034572', 14216, 'Midterm');
