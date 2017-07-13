Given(/^they are looking at their profile$/) do
  visit traveller_path(@traveller)
end

When(/^they like a to do item$/) do
  within '.to-do-item:first-child' do
    click_on 'Like'
  end
end

Then(/^the numbers of likes should increase$/) do
  within '.to-do-item:first-child' do
    expect(page).to have_content('1 Like')
  end
end

Then(/^we store the liked item in the database$/) do
  expect(::Like.count).to eq(1)
end