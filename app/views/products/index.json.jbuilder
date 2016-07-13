json.array!(@products) do |product|
  json.extract! product, :id, :quantity, :description, :unitprice, :total, :btw, :discount
  json.url product_url(product, format: :json)
end
