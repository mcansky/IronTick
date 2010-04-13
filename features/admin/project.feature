In order for an admin to check basic info about the project

Scenario: the admin logs in, check a project
	Given a project and admin
	When the admin logs in
	And the admin check a project
	Then the admin should see the project title within "h1"
	And the admin should see the project description within "p"
	And the admin should see "Last 10 tickets" within "h2"
	Then the admin should see "Edit" within "a"
	And the admin should see "Destroy" within "a"