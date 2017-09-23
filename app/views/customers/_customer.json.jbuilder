json.extract! customer, :id, :tenant_id, :customername, :email_id, :contact_number, :created_at, :updated_at
json.url customer_url(customer, format: :json)
