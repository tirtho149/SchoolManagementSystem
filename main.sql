CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Birthdate DATE
);

CREATE TABLE Teachers (
    TeacherID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Subject VARCHAR(50)
);

CREATE TABLE Courses (
    CourseID INT PRIMARY KEY,
    CourseName VARCHAR(100),
    TeacherID INT,
    FOREIGN KEY (TeacherID) REFERENCES Teachers(TeacherID)
);

CREATE TABLE Enrollments (
    EnrollmentID INT PRIMARY KEY,
    StudentID INT,
    CourseID INT,
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
    FOREIGN KEY (CourseID) REFERENCES Courses(CourseID)
);

CREATE TABLE Assignments (
    AssignmentID INT PRIMARY KEY,
    CourseID INT,
    AssignmentName VARCHAR(100),
    MaxScore FLOAT,
    FOREIGN KEY (CourseID) REFERENCES Courses(CourseID)
);

CREATE TABLE Grades (
    GradeID INT PRIMARY KEY,
    EnrollmentID INT,
    AssignmentID INT,
    Score FLOAT,
    FOREIGN KEY (EnrollmentID) REFERENCES Enrollments(EnrollmentID),
    FOREIGN KEY (AssignmentID) REFERENCES Assignments(AssignmentID)
);

DELIMITER //
CREATE PROCEDURE AddStudent(
    IN inFirstName VARCHAR(50),
    IN inLastName VARCHAR(50),
    IN inBirthdate DATE
)
BEGIN
    INSERT INTO Students (FirstName, LastName, Birthdate)
    VALUES (inFirstName, inLastName, inBirthdate);
END //
DELIMITER ;

DELIMITER //
CREATE PROCEDURE AddTeacher(
    IN inFirstName VARCHAR(50),
    IN inLastName VARCHAR(50),
    IN inSubject VARCHAR(50)
)
BEGIN
    INSERT INTO Teachers (FirstName, LastName, Subject)
    VALUES (inFirstName, inLastName, inSubject);
END //
DELIMITER ;

DELIMITER //
CREATE PROCEDURE AddCourse(
    IN inCourseName VARCHAR(100),
    IN inTeacherID INT
)
BEGIN
    INSERT INTO Courses (CourseName, TeacherID)
    VALUES (inCourseName, inTeacherID);
END //
DELIMITER ;

DELIMITER //
CREATE PROCEDURE EnrollStudentInCourse(
    IN inStudentID INT,
    IN inCourseID INT
)
BEGIN
    INSERT INTO Enrollments (StudentID, CourseID)
    VALUES (inStudentID, inCourseID);
END //
DELIMITER ;

DELIMITER //
CREATE PROCEDURE AddAssignment(
    IN inAssignmentName VARCHAR(100),
    IN inCourseID INT,
    IN inMaxScore FLOAT
)
BEGIN
    INSERT INTO Assignments (AssignmentName, CourseID, MaxScore)
    VALUES (inAssignmentName, inCourseID, inMaxScore);
END //
DELIMITER ;

DELIMITER //
CREATE PROCEDURE AddGrade(
    IN inEnrollmentID INT,
    IN inAssignmentID INT,
    IN inScore FLOAT
)
BEGIN
    INSERT INTO Grades (EnrollmentID, AssignmentID, Score)
    VALUES (inEnrollmentID, inAssignmentID, inScore);
END //
DELIMITER ;
