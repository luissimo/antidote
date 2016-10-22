class Company < ActiveRecord::Base

  belongs_to :invoice
  belongs_to :quote
  belongs_to :user

  mount_uploader :picture, PictureUploader
  validate :picture_size


  private

    # validate the size of an uploaded picture
    def picture_size
      if picture.size > 5.megabytes
        errors.add(:picture, 'Logo mag niet groter zijn dan 5MB')
      end
    end

    def display_company_info
      "##{id} | #{company_name}"
    end

end
