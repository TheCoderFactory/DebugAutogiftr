class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.integer :amount
      t.references :user, index: true

      t.timestamps
    end
  end
end
