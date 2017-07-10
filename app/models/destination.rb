class Destination < ActiveRecord::Base
  belongs_to :traveller, optional: true
end