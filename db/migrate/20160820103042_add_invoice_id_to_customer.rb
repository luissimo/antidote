class AddInvoiceIdToCustomer < ActiveRecord::Migration
  def change
    add_column :customers, :invoice_id, :integer
  end
end
