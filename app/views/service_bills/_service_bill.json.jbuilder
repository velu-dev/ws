json.extract! service_bill, :id, :job_card_id, :particular_id, :service_name, :description, :user_id, :cost, :created_at, :updated_at
json.url service_bill_url(service_bill, format: :json)
