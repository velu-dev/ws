class CreateParticulars < ActiveRecord::Migration[5.1]
  def change
    create_table :particulars do |t|
      t.belongs_to :tenant, foreign_key: true
      t.belongs_to :job_card, foreign_key: true
      t.belongs_to :user, foreign_key: true
      t.string :particular_short_note
      t.string :description
      t.boolean :completed_status

      t.timestamps
    end
  end
end
