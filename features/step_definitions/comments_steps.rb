Then /^I should be on the comments page for "(.*?)"$/ do |rankable_name|
  rankable = Rankit::Rankable.find_by_name rankable_name
  current_path.should == rankit.rankable_comments_path(rankable.to_param)
end
