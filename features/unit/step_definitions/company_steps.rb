Given /^a company$/ do
  @company = Factory.build(:company)
end

When /^I check it out$/ do
  @company.should_not == nil
end

Then /^it should have a name$/ do
  @company.name.should_not == nil
end

Then /^it should have an address$/ do
  @company.address.should_not == nil
end

Then /^it should have users$/ do
  @company.users.should_not == nil
end

Then /^it should have projects$/ do
  @company.projects.should_not
end
