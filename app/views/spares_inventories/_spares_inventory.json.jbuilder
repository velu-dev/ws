json.extract! spares_inventory, :id, :spare_id, :available_quantity, :alert_minimum_quantity, :created_at, :updated_at
json.url spares_inventory_url(spares_inventory, format: :json)
