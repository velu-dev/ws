class CreateTenants < ActiveRecord::Migration[5.1]
  def change
    create_table :tenants do |t|
      t.string :tenant_login_name
      t.string :display_name
      t.boolean :subscription_status
      t.string :logo
      t.belongs_to :address, foreign_key: true, null: true

      t.timestamps
    end
  end
end
