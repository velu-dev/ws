class JobCard < ApplicationRecord
  belongs_to :tenant
  belongs_to :customer
  belongs_to :user
  belongs_to :customer_vehicle
  has_many :particulars
  accepts_nested_attributes_for :customer, allow_destroy: true
  accepts_nested_attributes_for :customer_vehicle, allow_destroy: true
  #enum job_card_status: { service_pending: 1, delivery_pening: 2, completed: 3 }
  enum jobcard_status: [:nil,:service_pending, :in_progress, :delivery_pending, :completed]
=begin
  before_create do |job_card|
    job_card.tenant_id = current_tenant.id
  end
=end

end
