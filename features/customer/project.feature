In order for a customer to check basic info about the project

Scenario: the customer logs in, check a project
	Given a project and customer
	When the customer logs in
	And he check a project
	Then he should see the project title within "h1"
	And he should see the project description within "p"
	And he should see "Last 10 tickets" within "h2"
	Then he should not see "Edit" within "a"
	And he should not see "Destroy" within "a"