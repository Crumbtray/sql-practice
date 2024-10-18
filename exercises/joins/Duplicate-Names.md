# Duplicate First Names

### Problem
You'd like to prepare all school staff for students that have the same name.
Using joins, find the first name values that are duplicated.

<details>
  <summary>Hint</summary>

Think about how you will differentiate students with the same first name from each other.
  
</details>


### Solution
<details>
  <summary>Solution</summary>

  ```SQL
SELECT * FROM Students
INNER JOIN Students A on Students.FirstName = A.FirstName
WHERE Students.StudentId <> A.StudentId
  ```
  
</details>