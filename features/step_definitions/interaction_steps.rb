When /^I press "(.*?)"$/ do |button_text|
  click_button button_text
end

When /^I click on "(.*?)"$/ do |link_text|
  click_link link_text
end

When /^I fill in the following:$/ do |table|
  table.rows_hash.each do |field, value|
    fill_in field, :with => value
  end
end

Then /^I should (not )?see "(.*?)"$/ do |negation, expected_content|
  if negation == 'not '
    should_not have_content expected_content
  else
    should have_content expected_content
  end
end

Then /^show me the page$/ do
  save_and_open_page
end

Then /^I should be on the home page$/ do
  current_path.should == rankit.root_path
end

When /^I select "(.*?)" for "(.*?)"$/ do |option, select_label|
  select option, :from => select_label
end
