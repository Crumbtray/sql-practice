# Course Sign Ups

### Problem
School administrators want to know how many students signed up for each course.
Return a list of Course IDs and the number of students registered for that course.

### Solution
<details>
  <summary>Solution</summary>

  ```SQL
select courseid, count(*) from courseregistration
group by courseid
  ```
  
</details>