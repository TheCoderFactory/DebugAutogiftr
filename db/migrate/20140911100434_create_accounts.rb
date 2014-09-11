class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :first_name
      t.string :last_name
      t.string :picture
      t.string :phone
      t.references :user, index: true
      t.date :dob

      t.timestamps
    end
  end
end
