Given(/^they are on the map page$/) do
  visit root_path
end

When(/^they fill in a destination$/) do
  within("#new_destination") do
    fill_in "Name", :with => "India"
  end
end

When(/^they press 'Add To Do Item'$/) do
  click_on "Add To Do Item"
end

When(/^they fill in that todo item$/) do
  within(".to-do-item:last-child") do
    fill_in "Location", :with => "Mumbai"
    fill_in "Activity", :with => "Ride an Elephant"
  end
end

When(/^they save the destination$/) do
  click_on "Save Destination"
end

Then(/^the destination is added with all the todo items without refreshing$/) do
  expect(Destination.count).to eq 1
  expect(Destination.last.to_do_items.count).to eq 2
  expect(all('.destination .to-do-item').count).to eq 2
end