
CREATE TABLE StudentInfo (
STU_ID INT PRIMARY KEY,
    STU_NAME VARCHAR(50) NOT NULL,
    DOB DATE,
    PHONE_NO VARCHAR(20),
    EMAIL_ID VARCHAR(100) UNIQUE NOT NULL,
    ADDRESS VARCHAR(200)
);

