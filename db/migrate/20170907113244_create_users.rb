class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.belongs_to :tenant, foreign_key: true
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :username
      t.string :password_hash
      t.string :password_salt
      t.string :mobile_number
      t.string :password_confirmation
      t.belongs_to :address, foreign_key: true

      t.timestamps
    end
  end
end
