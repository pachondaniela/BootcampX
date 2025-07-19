SELECT cohorts.name as cohort, AVG(assistance_requests.completed_at - assistance_requests.started_at) as average_assistance_request_duration
FROM students 
JOIN cohorts ON cohorts.id = cohort_id
JOIN assistance_requests ON students.id = student_id
GROUP BY cohort
ORDER BY average_assistance_request_duration DESC
LIMIT 1;
