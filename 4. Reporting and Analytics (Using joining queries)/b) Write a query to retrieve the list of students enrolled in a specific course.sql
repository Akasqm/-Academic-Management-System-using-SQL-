-- b) Write a query to retrieve the list of students enrolled in a specific course 
SELECT
    StudentInfo.STU_ID,
    StudentInfo.STU_NAME,
    EnrollmentInfo.ENROLL_STATUS
FROM
    StudentInfo
INNER JOIN
    EnrollmentInfo ON StudentInfo.STU_ID = EnrollmentInfo.STU_ID
INNER JOIN
    coursesinfo ON EnrollmentInfo.COURSE_ID=coursesinfo.COURSE_ID
WHERE
    coursesinfo.COURSE_NAME = 'Data Structures'
    AND EnrollmentInfo.ENROLL_STATUS = 'Enrolled';