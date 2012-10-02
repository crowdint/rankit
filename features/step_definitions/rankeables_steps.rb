When /^I go to the rankables page$/ do
  visit rankit.rankables_path
end

Then /^I should be on the rankables page$/ do
  current_path.should == rankit.rankables_path
end
