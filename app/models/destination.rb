class Destination < ActiveRecord::Base
  has_many :to_do_items
  has_many :traveller_destinations
  has_many :travellers, through: :traveller_destinations
  accepts_nested_attributes_for :to_do_items
end
