# Long Course Names

### Problem
The school administrator in charge of designing the course listing says the font she chose means any course name longer than 30 characters will cause problems for her layout.

Find the names and the character count of courses with names longer than 30 characters.

### Solution
<details>
  <summary>Solution</summary>

  ```SQL
select length(coursename), coursename from courses
WHERE length(coursename) > 30
  ```
  
</details>