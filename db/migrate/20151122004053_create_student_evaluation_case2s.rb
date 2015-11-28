class CreateStudentEvaluationCase2s < ActiveRecord::Migration
  def change
    create_table :student_evaluation_case2s do |t|
      t.integer :user_id
      t.text :rate
      t.text :plan

      t.timestamps null: false
    end
  end
end
