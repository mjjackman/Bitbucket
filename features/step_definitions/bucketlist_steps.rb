Given(/^the to\-dos are given priorities$/) do
  @to_do_item.update!(:priority => 2)
  @to_do_item2 = ToDoItem.create!(:activity => "see the forbidden city", :priority => 1, :destination => @destination)
  @destination2 = @traveller.destinations.create!(:name => "USA")
  @to_do_item3 = ToDoItem.create!(:activity => "visit the Grand Canyon", :priority => 3, :destination => @destination2)
end

When(/^they visit their show page$/) do
  visit traveller_path(@traveller)
end

Then(/^they see them ordered by priority$/) do
  expect(page.body) =~ /#{@to_do_item2.activity}.*#{@to_do_item.activity}/m
end