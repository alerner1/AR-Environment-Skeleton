Student.destroy_all
Teacher.destroy_all
GradeLevel.destroy_all
ExamResult.destroy_all

bobby = Student.create(first_name: "Bobby", last_name: "Tables")
harry = Student.create(first_name: "Harry", last_name: "Potter")
ron = Student.create(first_name: "Ron", last_name: "Weasley")

mcgonagall = Teacher.create(last_name: "McGonagall", years_of_experience: 50)
lupin = Teacher.create(last_name: "Lupin", years_of_experience: 1)

GradeLevel.create(student: harry, teacher: mcgonagall)
GradeLevel.create(student: ron, teacher: mcgonagall)
GradeLevel.create(student: harry, teacher: lupin)
GradeLevel.create(student: ron, teacher: lupin)

ExamResult.create(student_id: 0, teacher_id: 0, subject: "math", result: 85)
ExamResult.create(student_id: 1, teacher_id: 0, subject: "math", result: 75)
ExamResult.create(student_id: 2, teacher_id: 0, subject: "math", result: 65)
ExamResult.create(student_id: 0, teacher_id: 0, subject: "math", result: 85)
ExamResult.create(student_id: 1, teacher_id: 0, subject: "math", result: 95)
ExamResult.create(student_id: 2, teacher_id: 0, subject: "math", result: 78)
ExamResult.create(student_id: 0, teacher_id: 0, subject: "math", result: 54)
ExamResult.create(student_id: 1, teacher_id: 0, subject: "math", result: 97)
ExamResult.create(student_id: 2, teacher_id: 0, subject: "math", result: 43)
ExamResult.create(student_id: 0, teacher_id: 0, subject: "math", result: 84)
ExamResult.create(student_id: 1, teacher_id: 0, subject: "math", result: 76)
ExamResult.create(student_id: 2, teacher_id: 0, subject: "math", result: 38)
ExamResult.create(student_id: 0, teacher_id: 0, subject: "math", result: 81)
ExamResult.create(student_id: 1, teacher_id: 0, subject: "math", result: 69)
ExamResult.create(student_id: 2, teacher_id: 0, subject: "math", result: 72)
ExamResult.create(student_id: 0, teacher_id: 0, subject: "math", result: 88)
ExamResult.create(student_id: 1, teacher_id: 0, subject: "math", result: 66)
ExamResult.create(student_id: 2, teacher_id: 0, subject: "math", result: 61)
ExamResult.create(student_id: 0, teacher_id: 0, subject: "math", result: 32)
ExamResult.create(student_id: 1, teacher_id: 0, subject: "math", result: 51)


