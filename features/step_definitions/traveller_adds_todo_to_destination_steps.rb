Before do
  Destination.create!(name: "Kenya")
end

Given(/^they are on the destination$/) do
  visit destination_path
end

Given(/^they have a destination$/) do
  Destination.all.count.should eq 1
end

Given(/^they click add new todo item$/) do
  click_on "Add ToDoItem"
  save_and_load_page
end

When(/^they fill in todo form$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^click submit$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^they have a todo item with the destination$/) do
  pending # Write code here that turns the phrase above into concrete actions
end