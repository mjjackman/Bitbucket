class Traveller < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :traveller_destinations
  has_many :destinations, through: :traveller_destinations
  accepts_nested_attributes_for :traveller_destinations
end