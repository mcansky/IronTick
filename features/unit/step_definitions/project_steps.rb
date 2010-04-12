Given /^a project$/ do
  @project = Factory.build(:project)
end

When /^we load it$/ do
  @project.should_not == nil
end

Then /^it should have a not empty name$/ do
  @project.name.should_not == nil
end

Then /^it should have a description$/ do
  @project.description.should_not == nil
end

# association check
Given /^a project, a ticket, and a company$/ do
  @project = Factory.build(:project)
  @ticket = Factory.build(:ticket)
  @company = Factory.build(:company)
end

When /^we set associations$/ do
  @project.tickets << @ticket
  @project.company = @company
end

Then /^the project should have tickets$/ do
  @project.tickets.should_not == nil
  @project.tickets.size.should == 1
end

Then /^the project should belongs to a company$/ do
  @project.company.should == @company
end

