class CreateRecipients < ActiveRecord::Migration
  def change
    create_table :recipients do |t|
      t.references :user, index: true
      t.string :first_name
      t.string :last_name
      t.string :street
      t.string :suburb
      t.string :postcode
      t.string :state
      t.string :country
      t.string :relationship

      t.timestamps
    end
  end
end
