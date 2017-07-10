class Destination < ActiveRecord::Base
  belongs_to :traveller, optional: true
  has_many :to_do_items
end