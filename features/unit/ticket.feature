In order to handle main feature : tracking tickets

Scenario: check basic ticket things
	Given a ticket
	When I check it out
	Then it should have a title
	And it should have a creation date
	And it should have a status
	And it should have a text

Scenario: check associations
	Given a ticket, a user and a project
	When I add the ticket to the user and the project
	Then the ticket should have an owner
	And the ticket should have a project
	And the ticket should have a customer