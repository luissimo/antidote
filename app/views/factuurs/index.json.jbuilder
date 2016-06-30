json.array!(@factuurs) do |factuur|
  json.extract! factuur, :id, :amount, :currency, :date
  json.url factuur_url(factuur, format: :json)
end
