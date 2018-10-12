Feature: Manage Categories
  As a blog administrator
  In order to group my blogs by categries
  I want to be able to add and edit blogging categories
  
Background: 
  Given the blog is set up  
  And I am logged into the admin panel
  
Scenario: Sucessfully create a new category
  Given I am on the new category page
  When I fill in "category_name" with "foobar"
  And I press "Save"
  Then I should see "successfully saved"
  
Scenario: Sucessfully edit an existing category
  Given I am on the new category page
  When I follow "Edit"
  And fill in "category_name" with "name" 
  And fill in "category_permalink" with "permalink" 
  And fill in "category_description" with "Interesting" 
  And I press "Save"
  Then I should see "Category was successfully saved"
  