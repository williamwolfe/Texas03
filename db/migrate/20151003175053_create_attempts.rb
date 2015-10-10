class CreateAttempts < ActiveRecord::Migration
  def change
    create_table :attempts do |t|
      t.integer :user_id
      t.integer :answer1
      t.integer :answer2
      t.integer :answer3
      t.integer :answer4
      t.integer :answer5
      t.integer :answer6
      t.integer :answer7
      t.integer :answer8
      t.integer :answer9
      t.integer :answer10
      t.integer :answer11
      t.integer :answer12
      t.integer :answer13
      t.integer :answer14
      t.integer :answer15
      t.integer :answer16
      t.integer :answer17
      t.integer :answer18
      t.integer :answer19
      t.integer :answer20

      t.timestamps null: false
    end
  end
end
