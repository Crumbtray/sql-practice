# Duplicate First Names

### Problem
You are super curious if any of the students share the first names of the instructors.

Find the irst name of the instructors that are duplicated.

### Solution
<details>
  <summary>Solution</summary>

  ```SQL
SELECT Instructor.FirstName FROM Students
INNER JOIN Instructor on Students.FirstName = Instructor.FirstName
  ```
  
</details>