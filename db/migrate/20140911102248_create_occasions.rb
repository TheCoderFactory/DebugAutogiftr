class CreateOccasions < ActiveRecord::Migration
  def change
    create_table :occasions do |t|
      t.references :recipient, index: true
      t.string :name
      t.string :occasion_type
      t.string :message
      t.date :date

      t.timestamps
    end
  end
end
