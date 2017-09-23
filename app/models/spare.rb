class Spare < ApplicationRecord
  belongs_to :unit
  belongs_to :spares_category
end
