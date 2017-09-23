class PurchaseLog < ApplicationRecord
	  belongs_to :spare
	  belongs_to :user
end
