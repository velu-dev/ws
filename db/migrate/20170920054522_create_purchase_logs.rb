class CreatePurchaseLogs < ActiveRecord::Migration[5.1]
  def change
    create_table :purchase_logs do |t|
      t.belongs_to :spare, foreign_key: true
      t.belongs_to :user, foreign_key: true
      t.float :cost_per_unit
      t.integer :quantity
      t.float :total_cost
      t.string :purchased_from
      t.float :sgst
      t.float :cgst

      t.timestamps
    end
  end
end
