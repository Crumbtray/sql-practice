# See You Again!
Difficulty: 5/5

### Problem
Being such a small school, inevitably students signing up for more courses will see the same instructors again.

But some lucky students will see the same instructor for all of their courses, despite signing up for more than one course.

Let's see if we can identify the students who signed up for more than one course, but will end up only seeing the same instructor for all of their courses.

<details>
  <summary>Hint 1</summary>

You will use the solution from [Course Load](./../aggregates/course-load.md).  That query tells you the students who have signed up for more than one course.  
</details>

<details>
  <summary>Hint 2</summary>

Figure out a query to get you the students who have the same instructors.  Then find a technique to narrow it down to those whose courseload is with that same instructor. 
</details>


### Solution
<details>
  <summary>Solution</summary>

  ```SQL
SELECT * FROM (
	select InstructorId, StudentId, COUNT(*) AS CourseCount from courses
	inner join courseregistration on courses.courseid = courseregistration.courseid
	GROUP BY InstructorId, StudentId
	HAVING COUNT(*) > 1
) StudentsAndTheSameInstructors
INNER JOIN (
	select studentid, COUNT(*) as CourseCount from courseregistration
	group by studentid
	having COUNT(*) > 1
) StudentsWithMultipleCourses
ON StudentsWithMultipleCourses.StudentId = StudentsAndTheSameInstructors.StudentId AND
StudentsWithMultipleCourses.CourseCount = StudentsAndTheSameInstructors.CourseCount
  ```
  
</details>