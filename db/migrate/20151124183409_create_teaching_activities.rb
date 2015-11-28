class CreateTeachingActivities < ActiveRecord::Migration
  def change
    create_table :teaching_activities do |t|
      t.integer :user_id
      t.text :activity1
      t.text :activity2

      t.timestamps null: false
    end
  end
end
