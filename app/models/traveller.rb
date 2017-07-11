class Traveller < ActiveRecord::Base
  has_many :traveller_destinations
  has_many :destinations, through: :traveller_destinations
  accepts_nested_attributes_for :destinations
end