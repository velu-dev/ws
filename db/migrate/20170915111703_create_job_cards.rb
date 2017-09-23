class CreateJobCards < ActiveRecord::Migration[5.1]
  def change
    create_table :job_cards do |t|
      t.string :job_card_number
      t.belongs_to :tenant, foreign_key: true
      t.belongs_to :customer, foreign_key: true
      t.belongs_to :customer_vehicle, foreign_key: true
      t.string :handover_person
      t.string :contact_number
      t.boolean :existing_vehicle_status
      t.boolean :approval_status
      t.integer :jobcard_status
      t.float :fuel_level
      t.integer :km_traveled
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
