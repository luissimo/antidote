class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :company_name
      t.string :address_line_1
      t.string :address_line_2
      t.string :zip_code
      t.string :city_name
      t.string :country_name
      t.string :email_address
      t.string :phone_number
      t.string :kvk_number
      t.string :btw_number
      t.string :iban_number
      t.string :bic_number
      t.string :bank_holder_name

      t.timestamps null: false
    end
  end
end
