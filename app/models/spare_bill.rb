class SpareBill < ApplicationRecord
  belongs_to :job_card
  belongs_to :spare
end
