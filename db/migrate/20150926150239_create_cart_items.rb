class CreateCartItems < ActiveRecord::Migration
  def change
    create_table :cart_items do |t|
      t.integer :product_id
      t.integer :user_id
      t.integer :quantity
      t.datetime :purchased_at

      t.timestamps null: false
    end
  end
end
