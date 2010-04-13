In order for a customer to check basic info about the project

Scenario: the customer logs in, check a project
	Given a project and customer
	When the customer logs in
	And he check a project
	Then he should see the project title
	And he should see the project description
	And he should see last 10 tickets name
	And he should see last 10 tickets status