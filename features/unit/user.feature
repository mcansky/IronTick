In order to handle customers and admins

Scenario: check basic user attributes
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
	And he should have a role

Scenario: check user associations
	Given a user, two tickets and company
	When I associate the user with those objets
	Then the user should belongs to the company
	And the user should manage tickets
	And the user should own tickets