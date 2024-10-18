# Department Names

### Problem
A school administrator is upset that there is no way to indicate which department is responsible for a particular course.

You know that the non-numeric part of the Course Code tells the department. For example, `MATH101` belongs to the `MATH` department, and `PHYS102` would be the responsibility of `PHYS` department.

You also know that every Course Code ends in a three digit number, so if you remove those three digits, you'll get the department.

Return a list of each course name and the department responsible for that course.

<details>
  <summary>Hint 1</summary>

You will have to use the `SUBSTRING()` and `LENGTH()` functions.
  
</details>

<details>
  <summary>Hint 2</summary>

Use `LENGTH()` to figure out the final parameter of `SUBSTRING()`.
  
</details>

### Solution
<details>
  <summary>Solution</summary>

  ```SQL
select 
SUBSTRING(coursecode, 1, LENGTH(coursecode)-3) AS Department, 
coursecode, 
coursename 
from courses
  ```
  
</details>