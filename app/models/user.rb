class User < ActiveRecord::Base
  has_many :recipients
  has_many :payments
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  after create :add_account

  def add_account
  	self.account = Account.new
  end
end
