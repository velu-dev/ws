class CreateSpareBills < ActiveRecord::Migration[5.1]
  def change
    create_table :spare_bills do |t|
      t.belongs_to :job_card, foreign_key: true
      t.belongs_to :spare, foreign_key: true
      t.float :cost_per_unit
      t.string :quantity
      t.float :sgst
      t.float :cgst
      t.float :sub_total

      t.timestamps
    end
  end
end
