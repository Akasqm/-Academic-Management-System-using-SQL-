-- a) Write a query to retrieve student details, such as student name, contact informations, and Enrollment status. 
SELECT
    STU_NAME,
    PHONE_NO,
    EMAIL_ID,
    ADDRESS,
    CASE WHEN ENROLLMENT_STATUS = 1 THEN 'Enrolled' ELSE 'Not Enrolled' END AS ENROLLMENT_STATUS
FROM
    Studentinfo;
