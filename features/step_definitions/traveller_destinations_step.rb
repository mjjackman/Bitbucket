Given(/^there are some destinations$/) do
  @name = "France"
  @destination = Destination.create!(:name => @name)
end

Given(/^they are registered$/) do
  @traveller = Traveller.create!(:name => "Jon McDonald", :email => 'jon@example.com', :password => 'password')
end

When(/^they are on the add traveller destination page$/) do
  visit edit_destination_traveller_path(@traveller)
end

When(/^they choose a destination$/) do
  select @destination.name, :from => 'Destination'
  click_on 'Add'
end

Then(/^there is a destination in their bucket list$/) do
  @traveller.reload
  expect(@traveller.destinations.count).to eq 1
end