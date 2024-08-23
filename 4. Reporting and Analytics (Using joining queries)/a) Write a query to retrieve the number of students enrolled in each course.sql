-- a) Write a query to retrieve the number of students enrolled in each course 
SELECT 
c.COURSE_ID,
c.COURSE_NAME,
COUNT(e.ENROLLMENT_ID) AS NUM_STUDENTS_ENROLLED
FROM coursesinfo C
left join enrollmentinfo e on c.COURSE_ID=e.COURSE_ID
WHERE e.ENROLL_STATUS='Enrolled'
GROUP BY c.COURSE_ID,c.COURSE_NAME;

