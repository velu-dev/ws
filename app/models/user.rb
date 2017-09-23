require 'bcrypt'
class User < ApplicationRecord
include BCrypt

  
  attr_accessor :password
  before_save :encrypt_password

  belongs_to :tenant
  belongs_to :address
  has_many :job_cards
  accepts_nested_attributes_for :address, allow_destroy: true
  accepts_nested_attributes_for :tenant, allow_destroy: true

=begin  before_create do |user|
    user.tenant_id = current_tenant.id
  end
=end
def encrypt_password
    self.password_salt = BCrypt::Engine.generate_salt
    self.password_hash = BCrypt::Engine.hash_secret(password, password_salt)
  end


  def self.authenticate(email, password)
    user = find_by(email: email)
    if user && user.password_hash == BCrypt::Engine.hash_secret(password, user.password_salt)
      user
    else
      nil
    end
  end
end
