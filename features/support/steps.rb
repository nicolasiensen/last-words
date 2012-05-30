Given /^I am in "(.*?)"$/ do |arg1|
  visit root_path
end

Given /^I fill in "(.*?)" with "(.*?)"$/ do |arg1, arg2|
  fill_in arg1, :with => arg2
end

When /^I press "(.*?)"$/ do |arg1|
  click_button arg1
end

When /^I click "(.*?)"$/ do |arg1|
  click_link arg1
end

Then /^I should be on "(.*?)"$/ do |arg1|
  current_path.should == message_path(Message.find_by_text("Hey everybody! This is a message from the future :D I hope you are all good! Because I am :)"))
end

Then /^I should see "(.*?)"$/ do |arg1|
  page.should have_content(arg1)
end
