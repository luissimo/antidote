class Customer < ActiveRecord::Base

  belongs_to :invoice
  belongs_to :quote
  belongs_to :user

  def display_customer_info
    "#{company_name} | #{address_line_1}"
  end

end
