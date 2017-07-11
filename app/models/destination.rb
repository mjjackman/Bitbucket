class Destination < ActiveRecord::Base
  has_many :traveller_destinations
  has_many :travellers, through: :traveller_destinations
end