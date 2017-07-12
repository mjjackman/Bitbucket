Given(/^they have some destinations$/) do
  @destination = @traveller.destinations.create!(:name => "China")
end

Given(/^they have some to\-dos$/) do
  @to_do_item = @destination.to_do_items.create!(:activity => "Walk on top of the Great Wall")
end

Given(/^they are on the sign in page$/) do
  visit new_traveller_session_path
end

When(/^they sign in$/) do
  fill_in 'Email', :with => @traveller.email
  fill_in 'Password', :with => @traveller.password
  click_on 'Log in'
end

Then(/^they are now signed in$/) do
  expect(page.has_content?("Signed in successfully"))
end

Then(/^they are redirected to their personal view$/) do
  expect(page.current_path).to eq traveller_path(@traveller)
end

Then(/^they see their destinations and to\-dos$/) do
  expect(page).to have_content("Walk on top of the Great Wall")
  expect(page).to have_content("China")
end