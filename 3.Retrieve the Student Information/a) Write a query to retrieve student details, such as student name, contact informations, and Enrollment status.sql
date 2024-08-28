-- a) Write a query to retrieve student details, such as student name, contact informations, and Enrollment status. 
SELECT 
    s.STU_NAME,
    c.COURSE_NAME
   
FROM 
    enrollmentinfo e
    JOIN studentinfo s ON s.STU_ID = e.STU_ID
    JOIN coursesinfo c ON c.COURSE_ID = e.COURSE_ID
    WHERE
    s.STU_ID = 1
    AND e.ENROLL_STATUS = 'Enrolled';
