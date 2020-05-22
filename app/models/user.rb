class User < ApplicationRecord
  include Rails.application.routes.url_helpers
  has_secure_password

  has_one_attached :profile_image

  validates_presence_of :email
  validates_uniqueness_of :email
  validates_presence_of :name

  def as_json(options = {})
    h = super(options)
    {
        id: id,
        name: name,
        email: email,
        profile_image: user_image,
        created_at: created_at,
        updated_at: updated_at,
    }
  end

  def user_image
    rails_blob_path(self.profile_image, :only_path => true)
  end

  def self.find_by_except_password (arg1)
    exclude_columns = ['password']
    self.find_by(email: arg1)
  end
end
