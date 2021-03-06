json.array!(@customers) do |customer|
  json.extract! customer, :id, :company_name, :first_name, :last_name, :send_to_name, :address_line_1, :address_line_2, :zip_code, :country_name, :email_address, :phone_number, :kvk_number, :btw_number, :iban_number, :bic_number, :bank_holder_name
  json.url customer_url(customer, format: :json)
end
