Given(/^a destination exists in the database$/) do
  @destination = Destination.create!(name: "Kenya")
end

Given(/^they are on the destination$/) do
  visit destination_path(@destination)
end

Given(/^they have a destination$/) do
  Destination.count.should eq 1
end

Given(/^they click add new todo item$/) do
  click_on "Add ToDoItem"
end

When(/^they fill in todo form$/) do
  fill_in "Activity", :with => "Horse Riding"
end

When(/^click submit$/) do
  click_on "Create"
end

Then(/^they have a todo item with the destination$/) do
  @destination.to_do_items.count.should eq 1 
end