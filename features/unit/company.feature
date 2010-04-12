In order to handle users by company

Scenario: check a company basic attributes
	Given a company
	When we build it
	Then it should have a name
	And it should have an address

Scenario: check company associations
	Given a company, a user and a project
	When I set those associations
	Then the company should have users
	And the company should have projects