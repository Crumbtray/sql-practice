# Teaching Load
Difficulty: 2/5

### Problem
Your school wants to know how many courses have been taught by each instructor by the end of the Fall 2024 semester.

Return a list of instructor IDs and the courses they finished teaching as of January 1st, 2025.

### Solution
<details>
  <summary>Solution</summary>

  ```SQL
select instructorid, count(*) from courses
WHERE EndDate < '2025-01-01'
GROUP BY InstructorId
  ```
  
</details>