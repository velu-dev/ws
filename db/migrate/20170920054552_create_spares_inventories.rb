class CreateSparesInventories < ActiveRecord::Migration[5.1]
  def change
    create_table :spares_inventories do |t|
      t.belongs_to :spare, foreign_key: true
      t.string :available_quantity
      t.string :alert_minimum_quantity

      t.timestamps
    end
  end
end
