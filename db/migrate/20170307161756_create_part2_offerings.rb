class CreatePart2Offerings < ActiveRecord::Migration
  def change
    create_table :part2_offerings do |t|
      t.string :title
      t.text :description
      t.string :link

      t.timestamps null: false
    end
  end
end
