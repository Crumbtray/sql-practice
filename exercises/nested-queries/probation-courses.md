# Education Assistants

### Problem
Instructors have one year of probation before they are hired as fulltime staff, and the courses they teach require extra scrutiny from school administration to ensure standards are met.

School administrators have asked you to get a list of courses whose instructors are in their probation period as of September 1st, 2024, meaning they were employed on or after September 1st, 2023.

### Solution
<details>
  <summary>Solution</summary>

Here is the solution using a nested query:

  ```SQL
select * from courses
where instructorid in (
	SELECT instructorid from instructor
    WHERE employmentdate >= '2023-09-01'
)
  ```

**Interesting Note:** 

While you could use a JOIN, this subquery approach is usually much more efficient, because joins are quite expensive compared to just comparing IDs.
  
</details>