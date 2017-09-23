json.extract! spare_bill, :id, :job_card_id, :spare_id, :cost_per_unit, :quantity, :sgst, :cgst, :sub_total, :created_at, :updated_at
json.url spare_bill_url(spare_bill, format: :json)
