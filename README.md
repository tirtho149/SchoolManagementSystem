# School Database Management System

This SQL script establishes a basic database schema for a school management system. It includes tables for students, teachers, courses, enrollments, assignments, and grades. Additionally, stored procedures are provided for common operations.

## Database Structure

- **Students Table:** Student ID, first name, last name, and birthdate.
- **Teachers Table:** Teacher ID, first name, last name, and subject.
- **Courses Table:** Course ID, course name, and teacher ID.
- **Enrollments Table:** Enrollment ID, student ID, and course ID.
- **Assignments Table:** Assignment ID, course ID, assignment name, and maximum score.
- **Grades Table:** Grade ID, enrollment ID, assignment ID, and score.

## Stored Procedures

- **AddStudent:** Adds a new student.
- **AddTeacher:** Adds a new teacher.
- **AddCourse:** Adds a new course.
- **EnrollStudentInCourse:** Enrolls a student in a course.
- **AddAssignment:** Adds a new assignment.
- **AddGrade:** Records a student's grade.

## How to Use

1. Execute the SQL script in your database management tool.
2. Use stored procedures to add students, teachers, courses, assignments, and grades.

Feel free to customize this schema for your school management system.

