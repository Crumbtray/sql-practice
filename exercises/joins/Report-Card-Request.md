# Report Card Request
Difficulty: 2/5

### Problem
Aiden Ifeoma, student ID `27`, is asking for his transcript that lists all the courses he took and his final grades.

Use a JOIN statement to find the names of the courses he took, and his final grade in each of them.

### Solution
<details>
  <summary>Solution</summary>

  ```SQL
select CourseName, FinalGrade
FROM CourseRegistration inner join Courses on Courses.CourseId = CourseRegistration.CourseId
WHERE StudentId = 27
  ```
  
</details>