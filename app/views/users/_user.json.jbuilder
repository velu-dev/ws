json.extract! user, :id, :tenant_id, :first_name, :last_name, :email, :username, :password, :mobile_number, :address_id, :created_at, :updated_at
json.url user_url(user, format: :json)
