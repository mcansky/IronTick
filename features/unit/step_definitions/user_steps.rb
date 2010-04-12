Given /^a user$/ do
  @user = User.find(:first)
end

Then /^he should have a login$/ do
  @user.login.should_not == nil
end

Then /^he should have an email$/ do
  @user.email.should_not == nil
end

Then /^he should have a phone number$/ do
  @user.phone.should_not == nil
end

Then /^he should belongs to a company$/ do
  @user.company.should_not == nil
end
