# Guardianship Forms
Difficulty: 2/5

### Problem
Students under the age of 21 need to be sent a guardian permission form.

Find out the Student ID, First and Last name of all students who are under 21 years of age as of September 01, 2024.

<details>
  <summary>Hint</summary>

You will have to use the `TIMESTAMPDIFF()` function.
  
</details>

### Solution
<details>
  <summary>Solution</summary>

  ```SQL
SELECT StudentId, FirstName, LastName FROM Students
WHERE timestampdiff(YEAR, DateOfBirth, '2024-09-01') < 21
  ```
  
</details>