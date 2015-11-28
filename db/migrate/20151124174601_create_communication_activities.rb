class CreateCommunicationActivities < ActiveRecord::Migration
  def change
    create_table :communication_activities do |t|
      t.integer :user_id
      t.text :mono
      t.text :slow
      t.text :high_voice
      t.text :ascending
      t.text :terse
      t.text :abrupt_speed
      t.text :high_pitch
      t.text :aloof
      t.text :abrupt
      t.text :shy
      t.text :aggressive
      t.text :helpful
      t.text :unprepared
      t.text :bored
      t.text :content
      t.text :unhappy
      t.text :careless
      t.text :passive
      t.text :caring
      t.text :imaginative
      t.text :eager
      t.text :activity3_1
      t.text :activity3_2
      t.text :activity3_3
      t.text :activity3_4
      t.text :activity3_5
      t.text :activity3_6
      t.text :activity4

      t.timestamps null: false
    end
  end
end
