class DropFactuurs < ActiveRecord::Migration
  def change
    drop_table :factuurs
  end
end
