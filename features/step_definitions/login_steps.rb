When /^I go to the login page$/ do
  visit rankit.new_user_session_path
end

When /^I enter the "(.*?)" user credentials$/ do |email|
  save_and_open_page
  fill_in 'Email', :with => email
  fill_in 'Password', :with => '12345'
end

