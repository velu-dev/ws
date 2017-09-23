class ServiceBill < ApplicationRecord
  belongs_to :job_card
  belongs_to :particular
  belongs_to :user
end
