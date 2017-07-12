class Destination < ApplicationRecord

  has_many :to_do_items
  accepts_nested_attributes_for :to_do_items

  has_many :traveller_destinations
  has_many :travellers, through: :traveller_destinations
end
