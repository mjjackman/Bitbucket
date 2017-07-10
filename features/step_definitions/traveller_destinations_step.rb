Given(/^there are some destinations$/) do
  @name = "France"
  @destination = Destination.create!(:name => @name)
end

Given(/^they are registered$/) do
  @traveller = Traveller.create!(:name => "Jon McDonald")
end

When(/^they are on the add destination page$/) do
  visit new_destination_path
end

When(/^they choose a destination$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^there is a destination in their bucket list$/) do
  pending # Write code here that turns the phrase above into concrete actions
end