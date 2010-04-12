Given /^a ticket$/ do
  @ticket = Factory.create(:ticket)
end

When /^I check it out$/ do
  @ticket.should_not == nil
end

Then /^it should have a title$/ do
  @ticket.title.should_not == nil
end

Then /^it should have a creation date$/ do
  @ticket.created_at.should_not == nil
end

Then /^it should have a status$/ do
  @ticket.status.should_not == nil
end

Then /^it should have a text$/ do
  @ticket.text.should_not == nil
end

Then /^it should have an owner$/ do
  @ticket.owner.should_not == nil
end

Then /^it should have a project$/ do
  @ticket.project.should_not == nil
end

Then /^it should have a customer$/ do
  @ticket.customer.should_not == nil
end

# associations check
Given /^a ticket, a manager, a customer and a project$/ do
  @ticket = Factory.create(:ticket)
  @user = Factory.create(:user)
  @admin = Factory.create(:admin)
  @project = Factory.create(:project)
end

When /^I add the ticket to the customer, manager and the project$/ do
  @ticket.manager = @admin
  @ticket.project = @project
  @ticket.customer = @user
end

Then /^the ticket should have a manager$/ do
  @ticket.manager.should == @admin
end

Then /^the ticket should have a project$/ do
  @ticket.project.should == @project
end

Then /^the ticket should have a customer$/ do
  @ticket.customer.should == @user
end
