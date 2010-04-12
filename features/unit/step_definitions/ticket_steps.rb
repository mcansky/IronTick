Given /^a ticket$/ do
  @ticket = Factory.build(:ticket)
end

When /^I check it out$/ do
  @ticket.should_not == nil
end

Then /^it should have a title$/ do
  @ticket.title.should_not == nil
end

Then /^it should have a creation date$/ do
  @ticket.creation_date.should_not == nil
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
