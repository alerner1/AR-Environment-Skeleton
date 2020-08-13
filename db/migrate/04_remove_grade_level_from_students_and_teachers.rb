class RemoveGradeLevelFromStudentsAndTeachers < ActiveRecord::Migration[6.0]
    remove_column :students, :grade_level
    remove_column :teachers, :grade_level
end