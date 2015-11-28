class CreatePlanningCase1s < ActiveRecord::Migration
  def change
    create_table :planning_case1s do |t|
      t.integer :user_id
      t.text :experiences
      t.text :orientation
      t.text :appropriate

      t.timestamps null: false
    end
  end
end
