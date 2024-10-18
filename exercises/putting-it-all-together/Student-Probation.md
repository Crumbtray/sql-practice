# Student Probation
Difficulty: 3/5

### Problem
In an effort to raise standards, the school headmaster is thinking of implementing a probation program for low-achieving students.

Before she implements the program, she'd like to get a list of students who would be on this probation program.

Get a list of students who have achieved a final grade of `25` or under.

In the list, return:
- their student id
- their first name
- their last name
- and the number of courses they have achieved a grade of 25 or under. 

### Solution
<details>
  <summary>Solution</summary>

  ```SQL
select
	students.studentid,
    students.firstname,
    students.lastname,
    NumFailedCourses
from students
inner join (
	select studentid, COUNT(*) as NumFailedCourses
    FROM courseregistration 
    WHERE FinalGrade <= 25
    GROUP BY studentid
) FailedCourses on FailedCourses.Studentid = students.studentid

  ```
  
</details>