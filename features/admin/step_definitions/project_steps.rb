Given /^a project and customer$/ do
  @project = Factory.create(:project)
  @admin = Factory.create(:admin)
end

When /^the admin logs in$/ do
  visit login_path
  fill_in "login", :with => @customer.login
  fill_in "password", :with => @customer.password
  click_button "Login"
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

Then /^he should see "([^\"]*)" within "([^\"]*)"$/ do |arg1, arg2|
  response.should_not contain(arg1)
end

