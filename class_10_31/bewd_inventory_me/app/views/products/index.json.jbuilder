json.array!(@products) do |product|
  json.extract! product, :id, :name, :description, :qty, :in_stock
  json.url product_url(product, format: :json)
end
