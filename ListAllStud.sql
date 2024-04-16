SELECT s.student_id, s.first_name, s.last_name, c.course_id, c.course_name
FROM Students s
JOIN Grades g ON s.student_id = g.student_id
JOIN Courses c ON g.course_id = c.course_id
WHERE c.course_id = 14216; -- Change the course_id to the desired course
