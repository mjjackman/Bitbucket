Feature: Traveller adds todo to exisiting destination

	Background:
		Given a destination exists in the database

	Scenario: Traveller Adds todo to desitination
		Given they have a destination
			And they are on the destination
			And they click add new todo item
		When they fill in todo form
			And click submit
		Then they have a todo item with the destination