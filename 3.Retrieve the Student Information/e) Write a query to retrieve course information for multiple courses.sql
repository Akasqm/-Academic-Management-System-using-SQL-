-- e) Write a query to retrieve course information for multiple courses. 
SELECT 
    CoursesInfo.COURSE_ID,
    CoursesInfo.COURSE_NAME,
    CoursesInfo.COURSE_INSTRUCTOR_NAME
FROM 
    CoursesInfo
WHERE
    CoursesInfo.COURSE_ID IN (1, 2, 3);



