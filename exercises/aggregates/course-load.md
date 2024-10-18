# Course Load
Difficulty: 2/5

### Problem
Your school wants to know the students who signed up for more than one course.

Return a list of Student IDs and the number of courses they signed up for, as long as they have signed up for more than one course.

### Solution
<details>
  <summary>Solution</summary>

  ```SQL
select studentid, COUNT(*) as CourseCount from courseregistration
group by studentid
having COUNT(*) > 1
  ```
  
</details>