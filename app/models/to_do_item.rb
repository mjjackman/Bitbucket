class ToDoItem < ActiveRecord::Base
  belongs_to :destination
  geocoded_by :geocode_input
  validates :location, :presence => true
  after_validation :geocode 

  private
  def geocode_input
   "#{self.location}, #{self.destination.name}"
  end
end