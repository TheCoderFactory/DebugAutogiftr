class AddColsToRecipient < ActiveRecord::Migration
  def change
    add_column :recipients, :latitude, :float
    add_column :recipients, :longitude, :float
  end
end
