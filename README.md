# SQL Practice

## Database Setup Instructions

1. Install MySQL on your machine.
2. Run the scripts from [db-setup-scripts](./db-setup-scripts/) folder in this order:
    1. [`table-setup.sql`](./db-setup-scripts/table-setup.sql)
    2. [`populate-student-data.sql`](./db-setup-scripts/populate-student-data.sql)
    3. [`populate-instructor-data.sql`](./db-setup-scripts/populate-instructor-data.sql)
    4. [`populate-course-data.sql`](./db-setup-scripts/populate-course-data.sql)
    5. [`populate-registration-data.sql`](./db-setup-scripts/populate-registration-data.sql)
3. You are now good to go!

# Database Model
This database is a simple representation of a small post-secondary school.  There are four tables:
- `Students` contains all students at the school.
- `Instructors` contains all the instructors employed at the school.
- `Courses` contains all the courses of the school.
- `CourseRegistration` stores the students registering for a course, and their overall final grade.

### Students Table
The Students table has 4 columns:
- `StudentId`, a numeric unique identifier for the student.
- `FirstName`
- `LastName`
- `DateOfBirth`

### Instructors Table
The Instructors table has 4 columns:
- `InstructorId`, a numeric unique identifier for the instructor.
- `FirstName`
- `LastName`
- `EmploymentDate`, the day they started teaching at the school.

### Courses Table
The Courses table has 6 columns:
- `CourseId`, a numeric unique identifier for the course.
- `CourseCode`, a shorthand abbreviation for the course. For example, `MATH101`
- `CourseName`, the official name of the course.
- `InstructorId`, the instructor of the course.
- `StartDate`
- `EndDate`

### CourseRegistration Table
The CourseRegistration table has 3 columns:
- `StudentId`, which references the `Students` table
- `CourseId`, which references the `Courses` table
- `FinalGrade`, a number from 0 to 100.


## Next Steps

Once you have completed the [Database Setup Instructions](./README.md#database-setup-instructions), you can optionally play around and query the database to get a sense of the data model.

Once you are ready to do the exercises, head to the [Exercises Folder.](./exercises/README.md)