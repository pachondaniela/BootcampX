SELECT students.name as student, AVG(assignment_submissions.duration) as average_assignment_duration 
FROM students JOIN assignment_submissions on students.id = student_id
WHERE students.end_date IS NULL
GROUP BY student
ORDER BY AVG(assignment_submissions.duration) DESC;