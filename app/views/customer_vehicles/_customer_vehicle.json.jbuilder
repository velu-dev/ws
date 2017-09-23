json.extract! customer_vehicle, :id, :tenant_id, :customer_id, :vehicle_name, :brand, :model, :registration_number, :vin_or_chassis_number, :year_of_manufacture, :created_at, :updated_at
json.url customer_vehicle_url(customer_vehicle, format: :json)
