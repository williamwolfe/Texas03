class AddParamsStatusTransactionIdToCartItems < ActiveRecord::Migration
  def change
    add_column :cart_items, :notification_params, :text
    add_column :cart_items, :status, :string
    add_column :cart_items, :transaction_id, :string
  end
end
