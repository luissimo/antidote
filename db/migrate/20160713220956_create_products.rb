class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.integer :quantity
      t.text :description
      t.decimal :unitprice, precision: 11, scale: 2 # Big numbers with just two decimal places
      t.decimal :total, precision: 11, scale: 2 # Big numbers with just two decimal places
      t.decimal :btw, precision: 3, scale: 2 # 1.0, 0.5, etc.
      t.decimal :discount, precision: 3, scale: 2  # 1.0, 0.5, etc.

      t.timestamps null: false
    end
  end
end


