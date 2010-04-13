Given /^a customer$/ do
  @customer = Factory.build(:customer)
end

When /^he logs in$/ do
  visit root_url
end

Then /^he should see "([^\"]*)"$/ do |arg1|
  response.should contain(arg1)
end