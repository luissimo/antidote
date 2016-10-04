class CreateQuotes < ActiveRecord::Migration
  def change
    create_table :quotes do |t|
      t.string :number
      t.string :currency
      t.date :date
      t.date :duedate
      t.decimal :btwtotal, precision: 20, scale: 2
      t.decimal :subtotal, precision: 20, scale: 2
      t.decimal :total,    precision: 20, scale: 2
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
