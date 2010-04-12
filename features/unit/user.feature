In order to handle customers and admins

Scenario: check basic users things
	Given a user "bob"
	When we get it
	Then he should have a login
	And he should have an email
	And he should have a lastname
	And he should have a firstname
	And he should have a crypted_password
	And he should have a password_salt
	And he should have a persistence_token
	And he should have a phone number
	And he should belongs to a company