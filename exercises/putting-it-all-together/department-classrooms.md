# Department Classrooms
Difficulty: 3/5

### Problem
Remember the school administrator who wanted to [know the department of each course?](./../sql-functions/department-names.md)

The reason why she wanted to know that was to find out if each department had a classroom suitable for the number of students that signed up for their course.

Could you get a list of the course, their department, and the number of students enrolled in that course?

### Solution
<details>
  <summary>Solution</summary>

  ```SQL
select 
	SUBSTRING(coursecode, 1, LENGTH(coursecode)-3) AS Department, 
	coursecode, 
	coursename,
	NumStudents
from courses
INNER JOIN (
	SELECT
		CourseId, 
		Count(*) As NumStudents 
	FROM CourseRegistration GROUP BY CourseId
) NumStudents on NumStudents.CourseId = Courses.CourseId
  ```
  
</details>