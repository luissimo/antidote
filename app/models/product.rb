class Product < ActiveRecord::Base


  # btw calculation
  def btw_calc
     multiple_products = self.quantity * self.unitprice
     btw_without_discount = multiple_products * ((self.btw / 100) + 1)
     update_attribute(:total, btw_without_discount)
  end

end
