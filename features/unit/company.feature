In order to handle users by company

Scenario: check a company basic attributes
	Given a company
	When I check it out
	Then it should have a name
	And it should have an address
	And it should have users
	And it should have projects