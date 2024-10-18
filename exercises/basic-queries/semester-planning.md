# Semester Planning

### Problem
The school wants a list of its course offering for fall semester 2024, which starts September 1st, 2024 and ends before December 31, 2024.
Find all courses that start on or after September 1st, 2024, and ends on or before December 31, 2024.

### Solution
<details>
  <summary>Solution</summary>

  ```SQL
select * from courses
WHERE StartDate >= '2024-09-01'
AND EndDate <= '2024-12-31'
  ```
  
</details>