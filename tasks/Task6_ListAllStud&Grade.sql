DROP PROCEDURE IF EXISTS GetStudentScoresInCourse;
DELIMITER //

CREATE PROCEDURE GetStudentScoresInCourse(IN course_id_param INT)
BEGIN
    SELECT s.student_id, s.first_name, s.last_name, a.assignment_name, g.score, c.course_name
    FROM Students s
    JOIN Grades g ON s.student_id = g.student_id
    JOIN Assignments a ON g.course_id = a.course_id
    JOIN Courses c ON g.course_id = c.course_id
    WHERE g.course_id = course_id_param;
END //

DELIMITER ;


CALL GetStudentScoresInCourse(14216); -- Change the course_id to the desired course
