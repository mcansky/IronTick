In order to handle customers and admins

Scenario: check basic users things
	Given a user
	When I check it out
	Then he should have a login
	And he should have an email
	And he should have a phone number
	And he should belongs to a company