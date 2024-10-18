# Semester Planning

### Problem
While [preparing the list of courses for fall semester 2024](./semester-planning.md), a school administrator panicked because she may have mistakenly added a course that spanned two semesters.

Come up with a query to check for any courses that starts and ends across the Fall 2024 and Winter 2025 semesters.
- Fall 2024 semester starts on September 1st, 2024 and ends on December 31, 2024.
- Winter 2025 semester starts on January 1st, 2025, and ends on May 1st, 2025.

### Solution
<details>
  <summary>Solution</summary>

There may be more than one answer to this question, but here is a straight-forward way to do it:
  ```SQL
select * from courses
WHERE StartDate >= '2024-09-01' 
AND StartDate <='2024-12-31'
AND EndDate > '2024-12-31'
  ```
  
</details>