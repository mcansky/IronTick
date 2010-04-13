Given /^a project and admin$/ do
  @project = Factory.create(:project)
  @admin = Factory.create(:admin)
end

When /^the admin logs in$/ do
  visit login_path
  fill_in "login", :with => @admin.login
  fill_in "password", :with => @admin.password
  click_button "Login"
end

When /^the admin check a project$/ do
  visit url_for(@project)
end

Then /^the admin should see the project title within "([^\"]*)"$/ do |arg1|
  response.should contain(@project.name)
end

Then /^the admin should see the project description within "([^\"]*)"$/ do |arg1|
  response.should contain(@project.description)
end

Then /^the admin should see "([^\"]*)" within "([^\"]*)"$/ do |arg1, arg2|
  response.should contain(arg1)
end


