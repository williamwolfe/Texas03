class CreateEvaluations < ActiveRecord::Migration
  def change
    create_table :evaluations do |t|
      t.date :completion_date
      t.string :license
      t.string :address
      t.string :city
      t.string :state
      t.string :zip
      t.string :overall
      t.string :develop
      t.text :develop_comments
      t.string :use
      t.text :use_comments
      t.string :feedback
      t.text :feedback_comments
      t.string :teaching
      t.text :teaching_comments
      t.text :topics
      t.string :advanced
      t.text :advance_topics
      t.text :add_comments

      t.timestamps null: false
    end
  end
end
