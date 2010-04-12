In order to handle main feature : tracking tickets

Scenario: check basic ticket things
	Given a ticket
	When I check it out
	Then it should have a title
	And it should have a creation date
	And it should have a status
	And it should have a text

Scenario: check associations
	Given a ticket, a manager, a customer and a project
	When I add the ticket to the customer, manager and the project
	Then the ticket should have a manager
	And the ticket should have a project
	And the ticket should have a customer