Student.destroy_all
Teacher.destroy_all
GradeLevel.destroy_all

bobby = Student.create(first_name: "Bobby", last_name: "Tables")
harry = Student.create(first_name: "Harry", last_name: "Potter")
ron = Student.create(first_name: "Ron", last_name: "Weasley")

mcgonagall = Teacher.create(last_name: "McGonagall", years_of_experience: 50)
lupin = Teacher.create(last_name: "Lupin", years_of_experience: 1)

GradeLevel.create(student: harry, teacher: mcgonagall)
GradeLevel.create(student: ron, teacher: mcgonagall)
GradeLevel.create(student: harry, teacher: lupin)
GradeLevel.create(student: ron, teacher: lupin)
