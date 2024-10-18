CREATE DATABASE UniversityOfSql;
USE UniversityOfSql;
CREATE TABLE IF NOT EXISTS Students
(
	StudentId INTEGER NOT NULL AUTO_INCREMENT,
    FirstName VARCHAR(200),
    LastName VARCHAR(200),
    DateOfBirth date,
    PRIMARY KEY (StudentId)
);

CREATE TABLE IF NOT EXISTS Instructor
(
	InstructorId INTEGER NOT NULL AUTO_INCREMENT,
    FirstName VARCHAR(200),
    LastName VARCHAR(200),
    EmploymentDate DATE,
    PRIMARY KEY (InstructorId)
);

CREATE TABLE IF NOT EXISTS Courses
(
	CourseId INTEGER NOT NULL AUTO_INCREMENT,
    CourseName VARCHAR(200),
    CourseCode VARCHAR(10) NOT NULL,
    StartDate date,
    EndDate date,
    InstructorId INTEGER,
    PRIMARY KEY (CourseId),
    FOREIGN KEY (InstructorId) REFERENCES Instructor(InstructorId)
);

CREATE TABLE CourseRegistration
(
	StudentId INTEGER NOT NULL,
    CourseId INTEGER NOT NULL,
    FOREIGN KEY (StudentId) REFERENCES Students(StudentId),
    FOREIGN KEY (CourseId) REFERENCES Courses(CourseId),
    FinalGrade INTEGER
);
