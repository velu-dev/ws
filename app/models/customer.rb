class Customer < ApplicationRecord
  belongs_to :tenant
  belongs_to :address
  has_many :customer_vehicles
  has_many :job_cards
  accepts_nested_attributes_for :address, allow_destroy: true
=begin
  before_save do |customer|
    customer.tenant_id = current_tenant.id
  end
=end

end
