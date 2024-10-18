# Education Assistants
Difficulty: 2/5

### Problem
A school administrator noticed certain challenges in the course registration software, and suspected there are a lot of students who can't register for courses.

The administrator wants to find all the students have created a profile at the school, but never signed up for a course, so she can contact them directly.

### Solution
<details>
  <summary>Solution</summary>

  ```SQL
select * from students
where studentID not in (
	select studentid from courseregistration)
  ```

</details>