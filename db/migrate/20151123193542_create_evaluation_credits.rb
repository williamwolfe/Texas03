class CreateEvaluationCredits < ActiveRecord::Migration
  def change
    create_table :evaluation_credits do |t|
      t.integer :user_id
      t.text :list_skills_1
      t.string :rating_1
      t.text :list_skills_2
      t.string :selected_skill
      t.string :rating_2
      t.text :support

      t.timestamps null: false
    end
  end
end
