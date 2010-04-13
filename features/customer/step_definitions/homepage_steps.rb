# some project exist
Given /^a customer and a project$/ do
  @customer = Factory.build(:customer)
  @project = Factory.build(:project)
end

When /^he logs in$/ do
  visit root_url
end

Then /^he should see "([^\"]*)"$/ do |arg1|
  response.should contain(arg1)
end

# no projects yet
Given /^a customer$/ do
  @customer = Factory.build(:customer)
end