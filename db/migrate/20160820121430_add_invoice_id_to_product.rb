class AddInvoiceIdToProduct < ActiveRecord::Migration
  def change
    add_column :products, :invoice_id, :integer
  end
end
