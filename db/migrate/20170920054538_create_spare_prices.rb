class CreateSparePrices < ActiveRecord::Migration[5.1]
  def change
    create_table :spare_prices do |t|
      t.belongs_to :spare, foreign_key: true
      t.float :actual_price_per_unit
      t.float :sales_price_per_unit
      t.float :sgst
      t.float :cgst

      t.timestamps
    end
  end
end
