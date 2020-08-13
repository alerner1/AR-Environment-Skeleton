Student.destroy_all
Teacher.destroy_all

Student.create(first_name: "Bobby", last_name: "Tables", grade_level: "first")
Student.create(first_name: "Harry", last_name: "Potter", grade_level: "seventh")
Student.create(first_name: "Ron", last_name: "Weasley", grade_level: "seventh")

Teacher.create(last_name: "McGonagall", grade_level: "seventh", years_of_experience: 50)
Teacher.create(last_name: "Lupin", grade_level: "third", years_of_experience: 1)