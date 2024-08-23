-- c) Write a query to retrieve the count of enrolled students for each instructor.  
SELECT
    CoursesInfo.COURSE_INSTRUCTOR_NAME,
    COUNT(EnrollmentInfo.ENROLLMENT_ID) AS NUM_STUDENTS_ENROLLED
FROM
    CoursesInfo
INNER JOIN
    EnrollmentInfo ON CoursesInfo.COURSE_ID = EnrollmentInfo.COURSE_ID
WHERE
    EnrollmentInfo.ENROLL_STATUS = 'Enrolled'
GROUP BY
    CoursesInfo.COURSE_INSTRUCTOR_NAME;