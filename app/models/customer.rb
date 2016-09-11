class Customer < ActiveRecord::Base

  belongs_to :invoice, dependent: :destroy
  belongs_to :user, dependent: :destroy

end
