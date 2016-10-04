class Company < ActiveRecord::Base

  belongs_to :invoice
  belongs_to :quote
  belongs_to :user

end
