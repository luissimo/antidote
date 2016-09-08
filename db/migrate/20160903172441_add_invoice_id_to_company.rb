class AddInvoiceIdToCompany < ActiveRecord::Migration
  def change
    add_column :companies, :invoice_id, :integer
  end
end
