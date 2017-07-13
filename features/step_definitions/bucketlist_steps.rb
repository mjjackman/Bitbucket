Given(/^they have multiple destinations$/) do
  @destination = @traveller.destinations.create!(name: "China")
  @destination2 = @traveller.destinations.create!(:name => "USA")

end

Given(/^they have multiple to\-dos$/) do
  Geocoder::Lookup::Test.add_stub(
    "Beijing, China", [
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
  @to_do_item = @destination.to_do_items.create!(:location => "Beijing", :activity => "Walk on top of the Great Wall")

  Geocoder::Lookup::Test.add_stub(
    "Arizona, USA", [
      {
        'latitude'     => 19.0759837,
        'longitude'    => 72.8776559,
        'address'      => 'Mumbai, Maharashtra, India',
        'state'        => 'Maharashtra',
        'state_code'   => '',
        'country'      => 'USA'
      }
    ]
  )
  @to_do_item2 = @destination2.to_do_items.create!(:location => "Arizona", :activity => "Visit the Grand Canyon")
  @to_do_item3 = @destination.to_do_items.create!(:location => "Beijing", :activity => "Visit the Forbidden City")
end

Given(/^the to\-dos are given priorities$/) do
  @to_do_item.update!(:priority => 2)
  @to_do_item2.update!(:priority => 3)
  @to_do_item3.update!(:priority => 1)
end

When(/^they visit their show page$/) do
  visit traveller_path(@traveller)
end

Then(/^they see them ordered by priority$/) do
  expect(page.body) =~ /#{@to_do_item2.activity}.*#{@to_do_item.activity}/m
end