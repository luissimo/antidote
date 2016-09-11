class Product < ActiveRecord::Base

 belongs_to :invoice, dependent: :destroy
 belongs_to :user, dependent: :destroy

  # btw calculation
  #def btw_calc
  #   multiple_products = self.quantity * self.unitprice
  #   btw_without_discount = multiple_products * ((self.btw / 100) + 1)
  #  update_attribute(:total, btw_without_discount)
 # end

end
