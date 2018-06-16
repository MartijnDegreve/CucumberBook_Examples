# features/test.feature
Feature: Web UI Automation example
  As an UI automation apprentice I want to learn how automation works.

Scenario: As an apprentice I want to look up information regarding Cucumber
  Given I am on the google search page
  When I search for Cucumber
  Then I am able to find the Cucumber page