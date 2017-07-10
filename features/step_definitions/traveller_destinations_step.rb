Given(/^there are some destinations$/) do
  @name = "France"
  @destination = Destination.create!(:name => @name)
end

Given(/^they are registered$/) do
  @traveller = Traveller.create!(:name => "Jon McDonald", :email => 'jon@example.com', :password => 'password')
end

Given(/^they are signed in$/) do
  page.set_rack_session({ "warden.user.traveller.key" => [[@traveller.id], "some stuff"] })
end

When(/^they are on the add traveller destination page$/) do
  visit new_traveller_destination_path(@traveller)
end

When(/^they choose a destination$/) do
  #save_and_open_page
  select @destination.name, :from => 'traveller_destination[id]'
  click_on 'Add'
end

Then(/^there is a destination in their bucket list$/) do
  expect(@traveller.destinations.count).to eq 1
end