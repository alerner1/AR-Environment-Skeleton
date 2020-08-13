class RemoveTeacherIdFromStudents < ActiveRecord::Migration[6.0]
    remove_column :students, :teacher_id
end