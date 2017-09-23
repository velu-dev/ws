class CreateServiceBills < ActiveRecord::Migration[5.1]
  def change
    create_table :service_bills do |t|
      t.belongs_to :job_card, foreign_key: true
      t.belongs_to :particular, foreign_key: true
      t.string :service_name
      t.string :description
      t.belongs_to :user, foreign_key: true
      t.float :cost

      t.timestamps
    end
  end
end
