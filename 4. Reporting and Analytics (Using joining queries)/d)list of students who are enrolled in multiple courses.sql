-- d) Write a query to retrieve the list of students who are enrolled in multiple courses 
SELECT 
studentinfo.STU_ID,
studentinfo.STU_NAME,
COUNT(enrollmentinfo.COURSE_ID) AS NUM_COURSES_ENROLLED
FROM studentinfo JOIN enrollmentinfo 
ON studentinfo.STU_ID = enrollmentinfo.STU_ID
GROUP BY studentinfo.STU_ID,
studentinfo.STU_NAME
HAVING COUNT(enrollmentinfo.COURSE_ID) > 1
;


