class CreatePlanningCredits < ActiveRecord::Migration
  def change
    create_table :planning_credits do |t|
      t.integer :user_id
      t.boolean :acute
      t.boolean :IP
      t.boolean :private
      t.boolean :corporate
      t.boolean :nonprofit
      t.boolean :pediatric
      t.boolean :school
      t.boolean :SNU
      t.boolean :SNF
      t.boolean :LTC
      t.text :other
      t.text :list

      t.timestamps null: false
    end
  end
end
