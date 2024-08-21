-- a) Write a query to retrieve student details, such as student name, contact informations, and Enrollment status
SELECT 
    s.STU_NAME,
    s.PHONE_NO,
    s.EMAIL_ID,
    s.ADDRESS,
    e.ENROLL_STATUS
FROM 
    StudentInfo s
    LEFT JOIN EnrollmentInfo e ON s.STU_ID = e.STU_ID;
