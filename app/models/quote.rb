class Quote < ActiveRecord::Base

  has_one :company, dependent: :destroy
  has_one :customer, dependent: :destroy
  has_many :products, dependent: :destroy
  belongs_to :user

  accepts_nested_attributes_for :customer, reject_if: :all_blank, allow_destroy: true
  accepts_nested_attributes_for :products, reject_if: :all_blank, allow_destroy: true
  accepts_nested_attributes_for :company, reject_if: :all_blank, allow_destroy: true
  validates :number, :currency, :date, :duedate, :btwtotal, :subtotal, :total, presence: true


end
