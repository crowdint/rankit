When /^I go to the rankables page$/ do
  visit rankit.rankables_path
end

Then /^I should be on the rankables page$/ do
  current_path.should == rankit.rankables_path
end

Given /^a rankable exists with name: "(.*?)"$/ do |name|
  @rankable = Rankit::Rankable.create! :name => name
end

When /^I click on its (.*?) button$/ do |button_text|
  within "tr#rankable_#{@rankable.id}" do
    click_link button_text
  end
end

Then /^user should have a score of (\d+) for "(.*?)"$/ do |expected_score, rankable_name|
  rankable = Rankit::Rankable.find_by_name rankable_name
  @user.scores.reload.find_by_rankable_id(rankable.id).score.should == expected_score.to_i
end
