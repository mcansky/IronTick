Given /^a project and customer$/ do
  @project = Factory.create(:project)
  @customer = Factory.create(:customer)
end

When /^the customer logs in$/ do
  visit root_url
end

When /^he check a project$/ do
  visit url_for(@project)
end

Then /^he should see the project title within "([^\"]*)"$/ do |arg1|
  response.should contain(@project.name)
end

Then /^he should see the project description within "([^\"]*)"$/ do |arg1|
  response.should contain(@project.description)
end

Then /^he should see "([^\"]*)" within "([^\"]*)"$/ do |arg1, arg2|
  response.should contain(arg1)
end

Then /^he should not see "([^\"]*)" within "([^\"]*)"$/ do |arg1, arg2|
  response.should_not contain(arg1)
end

