Given /^a company$/ do
  @company = Factory.build(:company)
end

When /^we build it$/ do
  @company.should_not == nil
end

Then /^it should have a name$/ do
  @company.name.should_not == nil
end

Then /^it should have an address$/ do
  @company.address.should_not == nil
end

# checking associations
Given /^a company, a user and a project$/ do
  @company = Factory.create(:company)
  @user = Factory.create(:user)
  @project = Factory.create(:project)
end

When /^I set those associations$/ do
  @company.users << @user
  @company.projects << @project
end

Then /^the company should have users$/ do
  @company.users.should_not == nil
end

Then /^the company should have projects$/ do
  @company.projects.should_not == nil
end

