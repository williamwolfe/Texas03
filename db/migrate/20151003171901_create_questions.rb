class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.integer :number
      t.text :Qtext
      t.string :optionA
      t.string :optionB
      t.string :optionC
      t.string :optionD
      t.string :optionE
      t.string :correct

      t.timestamps null: false
    end
  end
end
