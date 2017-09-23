json.extract! purchase_log, :id, :spare_id, :user_id, :cost_per_unit, :quantity, :total_cost, :purchased_from, :sgst, :cgst, :created_at, :updated_at
json.url purchase_log_url(purchase_log, format: :json)
