In order to manage the tickets we need projects

Scenario: we manage tickets by projects and company
	Given a project
	When we load it
	Then it should have a not empty name
	And it should have a description

Scenario: check project associations
	Given a project, a ticket, and a company
	When we set associations
	Then the project should have tickets
	And the project should belongs to a company