class CreateSpares < ActiveRecord::Migration[5.1]
  def change
    create_table :spares do |t|
      t.belongs_to :unit, foreign_key: true
      t.belongs_to :spares_category, foreign_key: true
      t.string :part_number
      t.string :item_name
      t.string :description

      t.timestamps
    end
  end
end
