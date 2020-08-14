class CreateExamResults < ActiveRecord::Migration[6.0]
    def change
        create_table :exam_results do |t|
            t.integer :student_id
            t.integer :teacher_id
            t.string :subject
            t.float :result
            t.float :percentile
            t.float :normalized_distribution_result
            t.float :four_point_scale_result
        end
    end
end