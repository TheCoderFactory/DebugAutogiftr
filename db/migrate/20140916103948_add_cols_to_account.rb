class AddColsToAccount < ActiveRecord::Migration
  def change
    add_column :accounts, :balance, :decimal
    add_column :accounts, :total_payments, :decimal
    add_column :accounts, :stripe_id, :string
  end
end
