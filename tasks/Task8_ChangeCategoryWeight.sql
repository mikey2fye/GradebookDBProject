DROP PROCEDURE IF EXISTS ChangeCategoryWeightsInCourse;
DELIMITER //

CREATE PROCEDURE ChangeCategoryWeightsInCourse(
    IN course_id_param INT,
    IN new_homework_weight INT,
    IN new_tests_weight INT,
    IN new_quizzes_weight INT,
    IN new_other_weight INT
)
BEGIN
    UPDATE Assignments
    SET weight = CASE 
                    WHEN category = 'Homework' THEN new_homework_weight
                    WHEN category = 'Tests' THEN new_tests_weight
                    WHEN category = 'Quizzes' THEN new_quizzes_weight
                    ELSE new_other_weight
                END
    WHERE course_id = course_id_param
    AND category IN ('Homework', 'Tests', 'Quizzes');
END //

DELIMITER ;

CALL ChangeCategoryWeightsInCourse(14216, 15, 50, 20, 5);
