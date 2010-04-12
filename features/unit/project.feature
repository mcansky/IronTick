In order to manage the tickets we need projects

Scenario: we manage tickets by projects and company
	Given a project
	When I check it out
	Then it should have a name
	And it should have a description
	And it should have tickets
	And it should belongs to a company