Given /^a user "([^\"]*)"$/ do |arg1|
  @user_name = arg1
end

When /^we get it$/ do
  @user = Factory.build(:user)
  @user.should_not == nil
end

Then /^he should have a login$/ do
  @user.login.should_not == nil
end

Then /^he should have a lastname$/ do
  @user.lastname.should_not == nil
end

Then /^he should have a firstname$/ do
  @user.firstname.should_not == nil
end

Then /^he should have a crypted_password$/ do
  #@user.crypted_password.should_not == nil
end

Then /^he should have a password_salt$/ do
  #@user.password_salt.should_not == nil
end

Then /^he should have a persistence_token$/ do
  #@user.persistence_token.should_not == nil
end

Then /^he should have an email$/ do
  @user.email.should_not == nil
end

Then /^he should have a phone number$/ do
  @user.phone.should_not == nil
end

# association check
Given /^a user, and company$/ do
  @user = Factory.create(:user)
  @company = Factory.create(:company)
end

When /^I set the user company with the company$/ do
  @user.company = @company
end

Then /^the user should belongs to the company$/ do
  @user.company.should == @company
end

