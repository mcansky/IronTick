In order to manage the tickets we need projects

Scenario: we manage tickets by projects and company
	Given a project
	When we load it
	Then it should have a not empty name
	And it should have a description
	And it should have tickets
	And it should belongs to a company