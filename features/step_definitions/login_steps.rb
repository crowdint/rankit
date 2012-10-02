When /^I go to the login page$/ do
  visit rankit.new_user_session_path
end

When /^I enter the "(.*?)" user credentials$/ do |email|
  fill_in 'Email', :with => email
  fill_in 'Password', :with => '12345'
end

Given /^I am logged in as "(.*?)"$/ do |email|
  steps %Q{
  Given a user exists with email "#{email}"
  When I go to the login page
  And I enter the "test@example.com" user credentials
  And I press "Sign in"
  }
end
