class Recipient < ActiveRecord::Base
  belongs_to :user
  has_many :occasions

  validates :street, :suburb, :state, presence: true

  geocoded_by :full_street_address
  after_validation :geocode

  def full_street_address
  	[street, suburb, postcode, state, country].compact.join(', ')
  end
end
