class Particular < ApplicationRecord
  belongs_to :tenant
  belongs_to :job_card
  belongs_to :user, optional: true
  accepts_nested_attributes_for :job_card, allow_destroy: true
=begin
  before_create do |particular|
    particular.tenant_id = current_tenant.id
  end
=end
end
