class CreateCustomerVehicles < ActiveRecord::Migration[5.1]
  def change
    create_table :customer_vehicles do |t|
      t.belongs_to :tenant, foreign_key: true
      t.belongs_to :customer, foreign_key: true
      t.string :vehicle_name
      t.string :brand
      t.string :model
      t.string :registration_number
      t.string :vin_or_chassis_number
      t.integer :year_of_manufacture

      t.timestamps
    end
  end
end
