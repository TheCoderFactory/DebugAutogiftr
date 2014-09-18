class Account < ActiveRecord::Base
  belongs_to :user

  def add_to_balance(price)
  	update_attribute('balance', balance.to_i + price)
  end
end
