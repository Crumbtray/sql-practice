# Chargibg Double?
Difficulty: 2/5

### Problem
A school administrator noticed the high number of `MATH102` courses being ran by the Math department this year.

He knows when this happens, some students accidentally register for the same course multiple times, and that has led to some angry phone calls because the student got charged for taking multiple courses, even though the student only wanted to register once.

The administrator wants to know whether there are any students this year that registered for `MATH102` multiple times.

Come up with a query that would detect if there are any students that did so.

### Solution
<details>
  <summary>Solution</summary>

  ```SQL
SELECT StudentId, COUNT(*) FROM CourseRegistration
where courseid in (select courseid from courses where coursecode = 'MATH102')
GROUP BY StudentId
HAVING COUNT(*) > 1
  ```

</details>