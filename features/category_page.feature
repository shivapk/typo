
Feature: Create or update categories
	As an administrator
	In order to organize articles
	I want to create and update categories

Background: Categories to be created and updated

	Scenario: Administrator can create categories
		Given the blog is set up
		And I am logged into the admin panel
		And I follow "Categories"
		And I fill in "category_name" with "Space"
		And I fill in "category_keywords" with "Nasa"
		And I fill in "category_description" with "First humans going to Mars"
		And I press "Save"
		Then I should see "Category was successfully saved."

	Scenario: Administrator can update categories
		Given the blog is set up
		And I am logged into the admin panel
		And I follow "Categories"
		And I follow "General"
		And I fill in "category_name" with "Parallel Space"
		And I fill in "category_keywords" with "SpaceX"
		And I fill in "category_description" with "First humans going to other universe"
		And I press "Save"
		Then I should see "Category was successfully saved."