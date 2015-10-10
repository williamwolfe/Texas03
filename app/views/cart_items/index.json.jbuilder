json.array!(@cart_items) do |cart_item|
  json.extract! cart_item, :id, :product_id, :user_id, :quantity, :purchased_at
  json.url cart_item_url(cart_item, format: :json)
end
