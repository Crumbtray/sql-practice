# New Employees
Difficulty: 1/5

### Problem
The school wants to host its first staff Christmas party since the pandemic.

The school is asking you to get the InstructorId, First Name, and Last Name, of all instructors hired after December 23rd, 2019, which was when the last time the school held a staff Christmas party.

### Solution
<details>
  <summary>Solution</summary>

  ```SQL
SELECT InstructorId, FirstName, LastName
FROM Instructor
WHERE EmploymentDate > '2019-12-23'
  ```
  
</details>