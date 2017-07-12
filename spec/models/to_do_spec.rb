require 'rails_helper'

RSpec.describe ToDoItem, type: :model do

  before do
    Geocoder::Lookup::Test.add_stub(
  "Mumbai, India", [
    {
      'latitude'     => 19.0759837,
      'longitude'    => 72.8776559,
      'address'      => 'Mumbai, Maharashtra, India',
      'state'        => 'Maharashtra',
      'state_code'   => '',
      'country'      => 'India'
    }
  ]
)
  end
  
  let(:destination) { Destination.create!(:name => 'India')}
    let(:to_do_item) { ToDoItem.create!(:activity => "Ride an Elephant",
      :location => "Mumbai", :destination => destination)}

    describe "geocode_input" do
      it "combines a location and destination" do
        expect(to_do_item.send(:geocode_input)).to eq('Mumbai, India')
      end
    end

    describe "geocoding" do
      it "sets the latitude and longitude after validation" do
        to_do_item.valid?
        expect(to_do_item.latitude).to eq 19.0759837
        expect(to_do_item.longitude).to eq 72.8776559
    end
  end
end