class Like < ApplicationRecord
  belongs_to :traveller
  belongs_to :to_do_item
end
