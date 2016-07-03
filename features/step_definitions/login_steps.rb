When(/^I visit the homepage$/) do 
  visit "/"
end

Then(/^I should see the login form$/) do 
  expect(page).to have_css "#loginModal"
end