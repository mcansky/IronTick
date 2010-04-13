In order for the customer to see a quick list of his project

Scenario: the customer connects and see a list of his projects
	Given a customer
	When he logs in
	Then he should see "list of projects"