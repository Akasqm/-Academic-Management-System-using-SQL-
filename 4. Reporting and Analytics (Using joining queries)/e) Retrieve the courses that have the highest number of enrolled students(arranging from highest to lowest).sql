-- e) Write a query to retrieve the courses that have the highest number of enrolled students(arranging from highest to lowest) 
SELECT coursesinfo.COURSE_ID,
coursesinfo.COURSE_NAME,
COUNT(enrollmentinfo.STU_ID) AS NUM_STUDENTS_ENROLLED
FROM coursesinfo
JOIN enrollmentinfo
ON coursesinfo.COURSE_ID = enrollmentinfo.ENROLLMENT_ID
WHERE
    EnrollmentInfo.ENROLL_STATUS = 'Enrolled'
GROUP BY coursesinfo.COURSE_ID,
coursesinfo.COURSE_NAME
ORDER BY NUM_STUDENTS_ENROLLED DESC
;