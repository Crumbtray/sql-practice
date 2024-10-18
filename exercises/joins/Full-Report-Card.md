# Report Card Request
Difficulty: 2.5/5

### Problem
Remember how you generated the [transcript for a single student?](./../joins/Report-Card-Request.md)

Well your school is actually a subsidiary school of a larger university, and that university is asking for the transcript records of all students so it can import it into their record system.

Write a query that lists:
 - Student Id
 - Student first name
 - Student last name
 - Course ID
 - Course Name
 - Course Code
 - Final Grade 

of all the grades of all the courses of all the students, ordered by student ID and then by course ID.

### Solution
<details>
  <summary>Solution</summary>

  ```SQL
select
	students.studentid,
    students.firstname,
    students.lastname,
    Courses.CourseId,
    Courses.CourseName,
    Courses.CourseCode,
    CourseRegistration.FinalGrade
from students
inner join courseregistration on courseregistration.studentid = students.studentid
inner join courses on courseregistration.courseid = courses.courseid
order by studentid, courseid
  ```
  
</details>