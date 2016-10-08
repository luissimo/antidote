class User < ActiveRecord::Base

  mount_uploader :image, ImageUploader
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable
  has_many :invoices, dependent: :destroy
  has_many :quotes, dependent: :destroy
  has_many :products, dependent: :destroy
  has_many :customers, dependent: :destroy
  has_many :companies, dependent: :destroy

  # User Avatar Validation
  validates_integrity_of  :image
  validates_processing_of :image

  private
  def avatar_size_validation
    errors[:image] << "moet lager zijn dan 500KB" if image.size > 0.5.megabytes
  end

end
