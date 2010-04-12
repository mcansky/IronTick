In order to handle main feature : tracking tickets

Scenario: check basic ticket things
	Given a ticket
	When I check it out
	Then it should have a title
	And it should have a creation date
	And it should have a status
	And it should have a text
	And it should have an owner
	And it should have a project
	And it should have a customer