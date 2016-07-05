json.array!(@companies) do |company|
  json.extract! company, :id, :company_name, :address_line_1, :address_line_2, :zip_code, :city_name, :country_name, :email_address, :phone_number, :kvk_number, :btw_number, :iban_number, :bic_number, :bank_holder_name
  json.url company_url(company, format: :json)
end
