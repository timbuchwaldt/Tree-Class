Feature: Basic Tree
  In order to Create a simple binary Tree
  As a developer
  I want to be able to insert Elements
  Scenario: Inserting an Element into a empty tree
    Given A empty Tree
    When inserting an element 1
    Then I get a tree with only the new Element
  Scenario: Inserting an element into a non-empty tree
    Given A non-empty tree
    When inserting another element
    Then i get a tree with all elements
  Scenario: Deleting an element from a 1-Element Tree
    Given A non-empty tree
    When deleting element 2
    Then i get a empty tree
  
  
  
  
  
  
  
  
  
  
  