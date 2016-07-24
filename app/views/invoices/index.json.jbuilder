json.array!(@invoices) do |invoice|
  json.extract! invoice, :id, :number, :currency, :date, :duedate, :btwtotal, :subtotal, :total, :footer
  json.url invoice_url(invoice, format: :json)
end
