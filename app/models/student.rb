class Student < ActiveRecord::Base
    has_many :grade_levels
    has_many :exam_results
    has_many :teachers, through: :grade_levels

    def full_name
        self.first_name + " " + self.last_name
    end

    def self.all_in_grade(grade_level)
        self.all.select do |student|
            student.grade_level == grade_level
        end
    end
end