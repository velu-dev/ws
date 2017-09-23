class CustomerVehicle < ApplicationRecord
  belongs_to :tenant
  belongs_to :customer
  has_many :job_cards
=begin  
  before_create do |customer_vehicle|
  	byebug
    customer_vehicle.tenant_id = current_tenant.id
  end
=end  
end
