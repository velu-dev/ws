class Tenant < ApplicationRecord
  belongs_to :address
  has_many :users
  accepts_nested_attributes_for :address, allow_destroy: true
  mount_uploader :logo, LogoUploader
end
