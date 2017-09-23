class CreateCustomers < ActiveRecord::Migration[5.1]
  def change
    create_table :customers do |t|
      t.belongs_to :tenant, foreign_key: true
      t.string :customername
      t.string :gst_number
      t.string :email_id
      t.string :contact_number
      t.belongs_to :address, foreign_key: true

      t.timestamps
    end
  end
end
