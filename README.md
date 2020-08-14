Answer the following questions:
- What changes did you make to your app? Why? 

1. Changed AR associations to has_many grade_levels and has_many students through grade_levels / has_many teachers through grade_levels

    - So the students and teachers would have a has-many-through relationship via grade_levels

2. Added grade_level model and associations (belongs_to student and belongs_to teacher)

    - 'cause we need to actually have the join table for this to work

3. Added migration to remove grade_level column from both students and teachers tables

    - It's no longer necessary, and it would be confusing to leave it there

4. Added migration to create grade_levels table

    - See explanation for #2
    - I did the migrations in separate steps because otherwise the filename would be realllllllllllllly long (following the conventions described on learn.co)

5. Added migration to remove teacher_id column from students table

    - See explanation for #3, also it breaks the program to leave it there

6. Updated seeds file to remove grade_level columns from teacher and student entries and add new GradeLevel instances.

    - Need examples that match the new tables!


Answer the following questions in the README:

Which method(s) does Active Record create for you?

Of the methods in the deliverables, Active Record creates Student#grade_level, Student.all, Student#teacher, and Teacher#students.

Which method(s) did you have to create yourself? Why?

- Student#full_name uses the AR-provided Student#first_name and Student#last_name but the logic to concatenate the first and last names had to be implemented by me.

- Student.all_in_grade uses the AR-provided Student#grade_level but I implemented the logic to select all within the grade level.

- Teacher#tenure uses the AR-provided Teacher#years_of_experience but I implemented the logic to check if it was > 5 and return true or false accordingly.

# Deliverables part 4

New relationship: Exam Results/Student/Teacher

- a student has many exam_results (calling them grades gets confusing because there are also grade_levels) # done, works
- an exam_result has one student # done, works
- a teacher has many exam_results # done, works
- an exam_result has one teacher # done, works

ExamResult class

    - belongs to student # done, works
    - belongs to teacher # done, works

    - additional attributes: subject, result, (optional because it might be too hard:) percentile # done done done, works

    - class methods: get average of all results, get standard deviation of all results # done, done, works

    - (optional because it might be too hard:) class method: create a bell curve and reassign the results accordingly # done, works

    - instance methods: check if result is a pass, translate result to 4.0 grade scale # done, done, works



# Deliverables part 3

- A Student has many Teachers through GradeLevel
- A Teacher has many Students through GradeLevel


# Deliverables 1 part 2

Add these deliverables:
- A Student belongs to a Teacher
- Student#teacher should return the teacher that student belongs to
- Teacher#students should return a list of all the students that belong to this teacher 

# Deliverables 1

Domain: Student-Teacher

- A Student has a first_name (string) # done, works
- A Student has a last_name (string) # done, works
- A Student has a grade_level (string), for ex: “first”, “second”, “third”, etc... # done, works

- Student#full_name should return the first and last name of the student in one string, for ex: “Ian Grubb” # done, works
- Student#grade_level should return the student’s grade level # done, works

- Student.all should return a list of all students # done, works
- Student.all_in_grade should receive an argument of a grade, ex: “first”, and return all students who are in that grade # done, works

- A Teacher has a last_name (string) # done, works
- A Teacher has a grade_level (string) # done, works
- A Teacher has a years_of_experience (integer) # done, works
- Teacher#tenure should return true if a teacher has taught more than 5 years, otherwise false # done, works

You should have a completed seeds file for testing # done

# AR-Environment-Skeleton

You can use this repo to build new Activerecord projects

* You will need to create your own app/models directories