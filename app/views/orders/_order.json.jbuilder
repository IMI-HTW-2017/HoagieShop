json.extract! order, :id, :status, :paid, :delivery_address, :billing_method, :price, :created_at, :updated_at
json.url order_url(order, format: :json)
