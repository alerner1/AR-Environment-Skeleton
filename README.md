Answer the following questions in the README:

Which method(s) does Active Record create for you?

Of the methods in the deliverables, Active Record creates Student#grade_level, Student.all, Student#teacher, and Teacher#students.

Which method(s) did you have to create yourself? Why?

- Student#full_name uses the AR-provided Student#first_name and Student#last_name but the logic to concatenate the first and last names had to be implemented by me.

- Student.all_in_grade uses the AR-provided Student#grade_level but I implemented the logic to select all within the grade level.

- Teacher#tenure uses the AR-provided Teacher#years_of_experience but I implemented the logic to check if it was > 5 and return true or false accordingly.


# Deliverables 1 part 2

Add these deliverables:
- A Student belongs to a Teacher
- Student#teacher should return the teacher that student belongs to
- Teacher#students should return a list of all the students that belong to this teacher (edited) 

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