class AddQuoteId < ActiveRecord::Migration
  def change
    add_column :customers, :quote_id, :integer
    add_column :companies, :quote_id, :integer
    add_column :products, :quote_id, :integer
  end
end
