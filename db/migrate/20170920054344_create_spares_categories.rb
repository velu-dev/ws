class CreateSparesCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :spares_categories do |t|
      t.string :category_name
      t.string :category_code
      t.string :hsnc_code

      t.timestamps
    end
  end
end
