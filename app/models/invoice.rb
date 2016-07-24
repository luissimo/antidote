class Invoice < ActiveRecord::Base

  has_one :company
  has_one :customer
  has_many :products
end
