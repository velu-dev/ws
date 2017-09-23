json.extract! job_card, :id, :tenant_id, :customer_id, :customer_vehicle_id, :handover_person, :contact_number, :existing_vehicle_status, :approval_status, :jobcard_status, :fuel_level, :km_traveled, :created_at, :updated_at
json.url job_card_url(job_card, format: :json)
