Given /^a project$/ do
  @project = Factory.build(:project)
end

When /^we load it$/ do
  @project.should_not == nil
end

Then /^it should have a description$/ do
  @project.description.should_not == nil
end

Then /^it should have tickets$/ do
  @project.tickets.should_not == nil
end

Then /^it should belongs to a company$/ do
  @project.company.should_not == nil
end
