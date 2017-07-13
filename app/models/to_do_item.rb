class ToDoItem < ApplicationRecord
  belongs_to :destination
  has_many :likes
  geocoded_by :geocode_input
  validates :location, :presence => true
  after_validation :geocode

  private
  def geocode_input
   "#{self.location}, #{self.destination.name}"
  end
end