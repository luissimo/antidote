json.array!(@quotes) do |quote|
  json.extract! quote, :id, :number, :currency, :date, :duedate, :btwtotal, :subtotal, :total, :user_id
  json.url quote_url(quote, format: :json)
end
