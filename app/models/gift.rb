class Gift < ActiveRecord::Base
	has_many :gift_occasions
	has_many :occasions, through: :gift_occasions
end
