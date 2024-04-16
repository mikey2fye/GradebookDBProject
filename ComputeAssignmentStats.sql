DROP PROCEDURE IF EXISTS ComputeAssignmentStats;

DELIMITER //

CREATE PROCEDURE ComputeAssignmentStats(
    IN assignment_name_param VARCHAR(100),
    IN course_id_param INT
)
BEGIN
    DECLARE avg_score DECIMAL(5, 2);
    DECLARE max_score DECIMAL(5, 2);
    DECLARE min_score DECIMAL(5, 2);
    
    SELECT 
        AVG(score) INTO avg_score
    FROM Grades
    WHERE assignment_name = assignment_name_param
    AND course_id = course_id_param;

    SELECT 
        MAX(score) INTO max_score
    FROM Grades
    WHERE assignment_name = assignment_name_param
    AND course_id = course_id_param;

    SELECT 
        MIN(score) INTO min_score
    FROM Grades
    WHERE assignment_name = assignment_name_param
    AND course_id = course_id_param;

    SELECT 
        assignment_name_param AS Assignment_Name,
        avg_score AS Average_Score,
        max_score AS Highest_Score,
        min_score AS Lowest_Score;
END //

DELIMITER ;

CALL ComputeAssignmentStats('Quiz 1',17814);
