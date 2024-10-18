# Employment Activity Check
Difficulty: 1/5

### Problem
Payroll wants to ensure all instructors are actually teaching courses.

The school is asking you to get the InstructorId, First Name, and Last Name, of any instructors who is employed but never taught a course.

### Solution
<details>
  <summary>Solution</summary>

  ```SQL
SELECT InstructorId, FirstName, LastName
FROM Instructor
WHERE instructorid NOT IN (
	SELECT instructorid from courses
)
  ```
  
</details>